<?php

namespace App\Controller;

use App\Repository\CategorieRepository;
use App\Repository\ProduitRepository;
use App\Repository\SousCategorieRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


class CatalogueController extends AbstractController
{

    /**
     * @Route("/", name="categorie")
     */
    public function categorie_liste(CategorieRepository $repo): Response
    {
        $liste_categorie = $repo->findAll();

        return $this->render('categorie/index.html.twig', [
            'listes' => $liste_categorie,
        ]);
    }

    /**
     * @Route("/souscategorie/{id}", name="souscategorie")
     */
    public function sous_categorie_liste(SousCategorieRepository $repo, $id): Response
    {
        $categorie = $repo->findBy(['categorie' => $id]);

        return $this->render('souscategorie/index.html.twig', [
            'sous_categories' => $categorie,
        ]);
    }

    /**
     * @Route("/produit/{id}", name="produit")
     */
    public function produit_liste(ProduitRepository $repo, $id): Response
    {
        $souscategorie = $repo->findBy(['sousCategorie' => $id]);

        return $this->render('produit/index.html.twig', [
            'produits' => $souscategorie,
        ]);
    }

    /**
     * @Route("/detail/{id}", name="details")
     */
    public function produit_details(ProduitRepository $repo, $id): Response
    {
        $description = $repo->find($id);

        return $this->render('detail/index.html.twig', [
            'descriptif' => $description,
        ]);
    }
}
