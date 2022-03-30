<?php

namespace App\Controller;

use App\Repository\ProduitRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TousLesProduitsController extends AbstractController
{
    /**
     * @Route("/catalogue", name="tous_les_produits")
     */
    public function tous_les_produits(ProduitRepository $repo, PaginatorInterface $paginator, Request $request): Response
    {
        $liste_tous_les_produits = $repo->findAll();
        $liste_tous_les_produits = $paginator->paginate(
            $liste_tous_les_produits,
            $request->query->getInt('page', 1),
            5
        );

        return $this->render('catalogue/index.html.twig', [
            'tous_produits' => $liste_tous_les_produits,
        ]);
    }
}
