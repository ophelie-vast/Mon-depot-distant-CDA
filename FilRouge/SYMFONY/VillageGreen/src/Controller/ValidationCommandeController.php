<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ValidationCommandeController extends AbstractController
{
    /**
     * @Route("/validation/commande", name="validation_commande")
     */
    public function index(): Response
    {
        return $this->render('validation_commande/index.html.twig', [
            'controller_name' => 'ValidationCommandeController',
        ]);
    }
}
