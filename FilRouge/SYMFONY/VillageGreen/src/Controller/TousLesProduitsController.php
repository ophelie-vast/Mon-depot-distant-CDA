<?php

namespace App\Controller;

use App\Repository\ProduitRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TousLesProduitsController extends AbstractController
{
    /**
     * @Route("/catalogue", name="tous_les_produits")
     */
    public function tous_les_produits(ProduitRepository $repo): Response
    {
        $liste_tous_les_produits = $repo->findAll();

        return $this->render('catalogue/index.html.twig', [
            'tous_produits' => $liste_tous_les_produits,
        ]);
    }
}
