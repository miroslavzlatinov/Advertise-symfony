<?php

namespace AdvertBundle\Controller;


use AdvertBundle\Entity\Advert;
use AdvertBundle\Entity\Image;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Advert controller.
 *
 * @Route("/admin/advert")
 *
 *
 */
class AdvertController extends Controller
{
    /**
     * Lists all advert entities.
     *
     * @Route("/", name="advert_index")
     * @Method("GET")
     */
    public function indexAction(Request $request)
    {
//        $em = $this->getDoctrine()->getManager();
//
//        $adverts = $em->getRepository('AdvertBundle:Advert')->findAll();
//
//        return $this->render('advert/index.html.twig', array(
//            'adverts' => $adverts,
//        ));

        $paginator = $this->get('knp_paginator');
        $query = $this->getDoctrine()->getRepository("AdvertBundle:Advert")->createQueryBuilder("p");
        $query->select('p');
        $pagination = $paginator->paginate(
            $query->getQuery(),
            $request->query->getInt('page', 1), 6);

            return $this->render('advert/index.html.twig', array('pagination' => $pagination));


        }


    /**
     * Creates a new advert entity.
     *
     * @Route("/new", name="advert_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {

        $advert = new Advert();

        $form = $this->createForm('AdvertBundle\Form\AdvertType', $advert);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {


            $file = $form['image_form']->getData();
            $galery = $form['files']->getData();

            $extension = $file->guessExtension();
            if (!$extension) {
                // extension cannot be guessed
                $extension = 'bin';
            }
            if (!$file) {
                $form->get('image_form')->addError(new FormError('Image is required'));
            } else {
                $filename = md5($advert->getTitle() . '' . bin2hex(random_bytes(20)));
                $filelocal = $file->move(
                    $this->get('kernel')->getRootDir() . '/../web/images/advert/',
                    $filename . "." . $extension
                );
                $advert->setMainPicture('/images/advert/' . $filelocal->getFilename());
            }
            $em = $this->getDoctrine()->getManager();
            $em->persist($advert);

            if(count($galery ) > 0){
                $i = 0;
                foreach ($galery as $file){

                    $extension = $file->guessExtension();
                    if (!$extension) {
                        // extension cannot be guessed
                        $extension = 'bin';
                    }

                    if (!$file) {
                        $form->get('files')->addError(new FormError('Image is required'));
                    } else {
                        $filename = md5($advert->getTitle() . '' . bin2hex(random_bytes(20)));
                        $filelocal = $file->move(
                            $this->get('kernel')->getRootDir() . '/../web/images/advert/',
                            $filename . "." . $extension
                        );
                        $image = new Image();
                        $image->setLocation('/images/advert/'.$filelocal->getFilename());
                        $image->setName($filelocal->getFilename());
                        $image->setAdvert($advert);
                        $em->persist($image);
                    }
                }

            }



            $em->flush();

            $this->addFlash("info", "Advert with added successfully");
            return $this->redirectToRoute('advert_show', array('id' => $advert->getId()));
        }

        return $this->render('advert/new.html.twig', array(
            'advert' => $advert,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a advert entity.
     *
     * @Route("/{id}", name="advert_show")
     * @Method("GET")
     */
    public function showAction(Advert $advert)
    {
        $deleteForm = $this->createDeleteForm($advert);

        return $this->render('advert/show.html.twig', array(
            'advert' => $advert,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing advert entity.
     *
     * @Route("/{id}/edit", name="advert_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Advert $advert)
    {
        $image = new Image();

        $deleteForm = $this->createDeleteForm($advert);
        $editForm = $this->createForm('AdvertBundle\Form\AdvertType', $advert);
        $deleteImageFrom = $this->createForm('AdvertBundle\Form\ImageType',$image);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            if ($advert->getImageForm() != null) {
                $file = $editForm['image_form']->getData();

                $extension = $file->guessExtension();
                if (!$extension) {
                    // extension cannot be guessed
                    $extension = 'bin';
                }
                if (!$file) {
                    $editForm->get('image_form')->addError(new FormError('Image is required'));
                } else {
                    $filename = md5($advert->getTitle() . '' . bin2hex(random_bytes(20)));
                    $filelocal = $file->move(
                        $this->get('kernel')->getRootDir() . '/../web/images/advert/',
                        $filename . "." . $extension
                    );
                    $advert->setMainPicture('/images/advert/' . $filelocal->getFilename());
                }
                $em = $this->getDoctrine()->getManager();
                $em->persist($advert);
                $this->getDoctrine()->getManager()->flush();
            }
            $this->addFlash("info", "Advert with name was edited successfully");
            return $this->redirectToRoute('advert_edit', array('id' => $advert->getId()));
        }

        return $this->render('advert/edit.html.twig', array(
            'advert' => $advert,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),

        ));
    }

    /**
     * Deletes a advert entity.
     *
     * @Route("/{id}", name="advert_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Advert $advert)
    {
        $form = $this->createDeleteForm($advert);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($advert);
            $em->flush();
        }
        $this->addFlash("delete", "Advert  successfully Deleted ");
        return $this->redirectToRoute('advert_index');
    }

    /**
     * Creates a form to delete a advert entity.
     *
     * @param Advert $advert The advert entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Advert $advert)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('advert_delete', array('id' => $advert->getId())))
            ->setMethod('DELETE')
            ->getForm();
    }
}
