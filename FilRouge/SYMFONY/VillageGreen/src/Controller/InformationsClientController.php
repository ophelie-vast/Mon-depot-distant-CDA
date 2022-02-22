<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class InformationsClientController extends AbstractController
{
    /**
     * @Route("/informations/client", name="informations_client")
     */
    public function index(): Response
    {
        return $this->render('informations_client/index.html.twig', [
            'controller_name' => 'InformationsClientController',
        ]);
    }
}
