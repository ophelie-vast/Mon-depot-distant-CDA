<?php

namespace App\Controller;

use App\Entity\Commande;
use App\Entity\DetailCommande;
use App\Repository\ClientRepository;
use App\Repository\ProduitRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Session\SessionInterface;

class ValidationCommandeController extends AbstractController
{
    /**
     * @Route("/validation/commande", name="validation_commande")
     */
    public function ValidationCommande(ClientRepository $client, EntityManagerInterface $manager, SessionInterface $session, ProduitRepository $prod): Response
    {
        $profil = $client->findOneBy(['users' => $this->getUser()]);
        $commande = new Commande();
        $panier = $session->get('panier', []);

        $commande->setClient($profil);
        $commande->setDateCommande(new \DateTime);
        $commande->setAdresseFacturation($profil->getAdresse());
        $commande->setVilleFacturation($profil->getVille());
        $commande->setCpFacturation($profil->getCp());
        $commande->setAdresseLivraison($profil->getAdresse());
        $commande->setVilleLivraison($profil->getVille());
        $commande->setCpLivraison($profil->getCp());

        $manager->persist($commande);
        $manager->flush();

        foreach ($panier as $key => $value) {
            $commandeDetail = new DetailCommande();

            $produit = $prod->find($key);

            $commandeDetail->setCommande($commande);
            $commandeDetail->setPrix($produit->getPrixAchat());
            $commandeDetail->setQuantite($value);

            $manager->persist($commandeDetail);
        }

        $manager->flush();

        $session->set('panier', []);

        return $this->render('validation_commande/index.html.twig', [
            'controller_name' => 'ValidationCommandeController',
        ]);
    }
}
