<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CoordonneesBancairesController extends AbstractController
{
    /**
     * @Route("/coordonnees/bancaires", name="coordonnees_bancaires")
     */
    public function index(): Response
    {
        return $this->render('coordonnees_bancaires/index.html.twig', [
            'controller_name' => 'CoordonneesBancairesController',
        ]);
    }
}
