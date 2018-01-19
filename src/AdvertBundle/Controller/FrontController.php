<?php

namespace AdvertBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class FrontController extends Controller
{
    /**
     * @param string $name
     * @return \Symfony\Component\HttpFoundation\Response
     *
     * @Route("/", name="front")
     * @Method("GET")
     */

    public function indexAction($name = 'Site')
    {
        return $this->render('manage/index.html.twig', array('name' => $name));
    }
}
