<?php

namespace App\Controller;

use App\Repository\CategorieRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AccueilController extends AbstractController
{
    
    //public function index(CategorieRepository $repo): Response
    //{
    // return $this->redirectToRoute("categorie");

        //return $this->render('accueil/index.html.twig', [
        //'accueil' =>$repo->findAll(),
      //   ]);
    //}

      /**
     * @Route("/", name="accueil")
     */
    public function index(CategorieRepository $repo): Response
    {
        $liste_categorie = $repo->findAll();

        dump($liste_categorie);

        return $this->render('accueil/index.html.twig', [
            'listes' => $liste_categorie,
        ]);
    }
}
