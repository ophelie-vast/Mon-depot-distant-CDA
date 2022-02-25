<?php

namespace App\Controller;

use App\Entity\Produit;
use App\Repository\ClientRepository;
use App\Repository\ProduitRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


class PanierController extends AbstractController
{
    /**
     * @Route("/panier", name="panier")
     */
    public function panier(SessionInterface $session, ProduitRepository $repo): Response
    {
        $panier = $session->get("panier", []);

        $dataPanier = [];

        foreach ($panier as $id => $quantite) {
            $produit = $repo->find($id);
            $dataPanier[] = [
                "produit" => $produit,
                "quantite" => $quantite
            ];
        }

        $total = 0;

        foreach ($dataPanier as $ligne) {
            $totalLigne = $ligne['produit']->getPrixAchat() * $ligne['quantite'];
            $total += $totalLigne;
        }


        return $this->render('panier/index.html.twig', [
            'lignes' => $dataPanier,
            'total' => $total
        ]);
    }


    /**
     * @Route("/add/{id}", name="add")
     */
    public function add(SessionInterface $session, Produit $produit): Response
    {
        // On récupère le panier actuel
        $panier = $session->get("panier", []);
        $id = $produit->getId();

        if (!empty($panier[$id])) {
            $panier[$id]++;
        } else {
            $panier[$id] = 1;
        }

        // On sauvegarde dans la session
        $session->set("panier", $panier);

        return $this->redirectToRoute("panier");
    }

    /**
     * @Route("/remove/{id}", name="remove")
     */
    public function remove(Produit $produit, SessionInterface $session)
    {
        // On récupère le panier actuel
        $panier = $session->get("panier", []);
        $id = $produit->getId();

        if (!empty($panier[$id])) {
            if ($panier[$id] > 1) {
                $panier[$id]--;
            } else {
                unset($panier[$id]);
            }
        }

        // On sauvegarde dans la session
        $session->set("panier", $panier);

        return $this->redirectToRoute("panier");
    }

    /**
     * @Route("/delete/{id}", name="delete")
     */
    public function delete(Produit $produit, SessionInterface $session)
    {
        // On récupère le panier actuel
        $panier = $session->get("panier", []);
        $id = $produit->getId();

        if (!empty($panier[$id])) {
            unset($panier[$id]);
        }

        // On sauvegarde dans la session
        $session->set("panier", $panier);

        return $this->redirectToRoute("panier");
    }

    /**
     * @Route("/informations/client", name="informations_client")
     */
    public function infos_client(ClientRepository $client): Response
    {
        if (!$this->getUser()) {
            $this->addFlash('connexion', 'Veuillez vous connecter');
            return $this->redirectToRoute('app_login');
        } else {
            if (!$client->findOneBy(['users' => $this->getUser()])) {
                $this->addFlash('error_profil', 'Veuillez entrer vos informations');
                return $this->redirectToRoute('profil_client');
            }
        }

        dump($this->getUser());

        return $this->render('informations_client/index.html.twig', [
            'profil' => $client->findOneBy(['users' => $this->getUser()]),
        ]);
    }
}