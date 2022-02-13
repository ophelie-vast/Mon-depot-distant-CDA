<?php

namespace App\Controller;

use App\Repository\CategorieRepository;
use App\Repository\SousCategorieRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


class CatalogueController extends AbstractController
{
  
    /**
     * @Route("/categorie/{id}", name="categorie")
     */
    public function categorie_liste(CategorieRepository $repo, $id): Response
    {
        $liste_categorie = $repo->find($id);

        dump($liste_categorie);

        return $this->render('categorie/index.html.twig', [
            'listes' => $liste_categorie,
        ]);
    }

    /**
     * @Route("/souscategorie/{id}", name="souscategorie")
     */
    public function sous_categorie_liste(CategorieRepository $repo, $id): Response
    {

        $categorie = $repo->find($id);
        $liste_sous_categorie = $categorie->getSouscategories();

        dump($liste_sous_categorie);

        return $this->render('souscategorie/index.html.twig', [
            'sous_categories' => $liste_sous_categorie,
        ]);
    }

    /**
     * @Route("/produit/{id}", name="produit")
     */
    public function produit_liste(SousCategorieRepository $repo, $id): Response
    {
        $sous_categorie = $repo->find($id);
        $liste_produit = $sous_categorie->getProduit();

        dump($liste_produit);

        return $this->render('produit/index.html.twig', [
            'produits' => $liste_produit,
        ]);
    }

    /**
     * @Route("/details/{id}", name="details")
     */
    public function produit_details(SousCategorieRepository $repo, $id): Response
    {
        $sous_categorie = $repo->find($id);
        $liste_produit = $sous_categorie->getProduit();

        dump($liste_produit);

        return $this->render('produit/index.html.twig', [
            'produits' => $liste_produit,
        ]);
    }
}
