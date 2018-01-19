<?php

namespace AdvertBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
class ManageController extends Controller
{
    /**
     * @param $name
     * @return \Symfony\Component\HttpFoundation\Response
     * @Route("/manage", name="manage")
     * @Method()
     *
     */


    public function indexAction($name = 'Site')
    {

        return $this->render('manage/manage.html.twig', array('name' => $name));
    }
}
