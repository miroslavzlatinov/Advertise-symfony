<?php

namespace AdvertBundle\Controller;

use AdvertBundle\Entity\City;
use Proxies\__CG__\AdvertBundle\Entity\Advert;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * City controller.
 *
 * @Route("/admin/city" )
 */
class CityController extends Controller
{
    /**
     * Lists all city entities.
     *
     * @Route("/", name="city_index")
     * @Method("GET")
     */
    public function indexAction(Request $request)
    {
//        $em = $this->getDoctrine()->getManager();
//
//        $cities = $em->getRepository('AdvertBundle:City')->findAll();
//
//        return $this->render('city/index.html.twig', array(
//            'cities' => $cities,
//        ));

        $paginator = $this->get('knp_paginator');
        $query = $this->getDoctrine()->getRepository("AdvertBundle:City")->createQueryBuilder("p");
        $query->select('p');
        $pagination = $paginator->paginate(
            $query->getQuery(),
            $request->query->getInt('page', 1), 6);
        try {
            return $this->render('city/index.html.twig', array('pagination' => $pagination));
        } catch (\Exception $e) {
            dump($e);
            exit;
        }
    }

    /**
     * Creates a new city entity.
     *
     * @Route("/new", name="city_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $city = new City();
        $form = $this->createForm('AdvertBundle\Form\CityType', $city);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($city);
            $em->flush();
            $this->addFlash("info", "City aded successfully");
            return $this->redirectToRoute('city_show', array('id' => $city->getId()));
        }

        return $this->render('city/new.html.twig', array(
            'city' => $city,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a city entity.
     *
     * @Route("/{id}", name="city_show")
     * @Method("GET")
     */
    public function showAction(City $city)
    {
        $deleteForm = $this->createDeleteForm($city);

        return $this->render('city/show.html.twig', array(
            'city' => $city,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing city entity.
     *
     * @Route("/{id}/edit", name="city_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, City $city)
    {
        $deleteForm = $this->createDeleteForm($city);
        $editForm = $this->createForm('AdvertBundle\Form\CityType', $city);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();
            $this->addFlash("info", "City edited successfully");
            return $this->redirectToRoute('city_edit', array('id' => $city->getId()));
        }

        return $this->render('city/edit.html.twig', array(
            'city' => $city,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a city entity.
     *
     * @Route("/{id}", name="city_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, City $city)
    {
        $form = $this->createDeleteForm($city);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            if ($this->getDoctrine()->getRepository('AdvertBundle:Advert')->checkCity($city->getId())){
                $this->addFlash("error", "City is Used . Do Not Delete ");
                return $this->redirectToRoute('city_edit',array('id' => $city->getId()));
            }
            $em = $this->getDoctrine()->getManager();
            $em->remove($city);
            $em->flush();
        }
        $this->addFlash("delete", "City Deleted successfully");
        return $this->redirectToRoute('city_index');
    }

    /**
     * Creates a form to delete a city entity.
     *
     * @param City $city The city entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(City $city)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('city_delete', array('id' => $city->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
