<?php

namespace AdvertBundle\Controller;

use AdvertBundle\Entity\Page;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Page controller.
 *
 * @Route("/admin/page")
 */
class PageController extends Controller
{
    /**
     * Lists all page entities.
     *
     * @Route("/", name="page_index")
     * @Method("GET")
     */
    public function indexAction(Request $request)
    {
//        $em = $this->getDoctrine()->getManager();
//
//        $pages = $em->getRepository('AdvertBundle:Page')->findAll();
//
//        return $this->render('page/index.html.twig', array(
//            'pages' => $pages,
//        ));


        $paginator = $this->get('knp_paginator');
        $query = $this->getDoctrine()->getRepository("AdvertBundle:Page")->createQueryBuilder("p");
        $query->select('p');
        $pagination = $paginator->paginate(
            $query->getQuery(),
            $request->query->getInt('page', 1), 6);
        try {
            return $this->render('page/index.html.twig', array('pagination' => $pagination));
        } catch (\Exception $e) {
            dump($e);
            exit;
        }
    }

    /**
     * Creates a new page entity.
     *
     * @Route("/new", name="page_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $page = new Page();
        $form = $this->createForm('AdvertBundle\Form\PageType', $page);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $file = $form['image_form']->getData();
            $extension = $file->guessExtension();
            if (!$extension) {
                // extension cannot be guessed
                $extension = 'bin';
            }
            if (!$file) {
                $form->get('image_form')->addError(new FormError('Image is required'));
            } else {
                $filename = md5( $page->getTitle() . '' . bin2hex(random_bytes(20)));
                $filelocal = $file->move(
                    $this->get('kernel')->getRootDir() . '/../web/images/advert/',
                    $filename . "." . $extension
                );
                $page->setPicture('/images/advert/' . $filelocal->getFilename());
            }
            $em = $this->getDoctrine()->getManager();
            $em->persist($page);
            $em->flush();
            $this->addFlash("info", "Category aded successfully");
            return $this->redirectToRoute('page_show', array('slug' => $page->getSlug()));
        }

        return $this->render('page/new.html.twig', array(
            'page' => $page,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a page entity.
     *
     * @Route("/{slug}", name="page_show")
     * @Method("GET")
     */
    public function showAction(Page $page)
    {
        $deleteForm = $this->createDeleteForm($page);

        return $this->render('page/show.html.twig', array(
            'page' => $page,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing page entity.
     *
     * @Route("/{slug}/edit", name="page_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Page $page)
    {
        $deleteForm = $this->createDeleteForm($page);
        $editForm = $this->createForm('AdvertBundle\Form\PageType', $page);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {



        if ($page->getImageForm() != null) {     //instanceof not wored

            /** @var UploadedFile $file */
            $file = $editForm['image_form']->getData();
                $extension = $file->guessExtension();
                if (!$extension) {
                    // extension cannot be guessed
                    $extension = 'bin';
                }

                if (!$file) {
                    $editForm->get('image_form')->addError(new FormError('Image is required'));
                } else {
                    $filename = md5($page->getTitle() . '' . bin2hex(random_bytes(20)));
                    $filelocal = $file->move(
                        $this->get('kernel')->getRootDir() . '/../web/images/advert/',
                        $filename . "." . $extension
                    );
                    $page->setPicture('/images/advert/' . $filelocal->getFilename());
                    $entityManager = $this->getDoctrine()->getManager();
                    $entityManager->persist($page);
                    $this->getDoctrine()->getManager()->flush();

                }
            }


            $this->addFlash("info", "Page edited successfully");

            return $this->redirectToRoute('page_edit', array('slug' => $page->getSlug()));
        }

        return $this->render('page/edit.html.twig', array(
            'page' => $page,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a page entity.
     *
     * @Route("/{id}", name="page_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Page $page)
    {
        $form = $this->createDeleteForm($page);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($page);
            $em->flush();
        }
        $this->addFlash("delete", "Category deleted successfully");
        return $this->redirectToRoute('page_index');
    }

    /**
     * Creates a form to delete a page entity.
     *
     * @param Page $page The page entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Page $page)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('page_delete', array('id' => $page->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
