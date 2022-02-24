<?php

namespace App\Controller;

use App\Entity\Client;
use App\Repository\ClientRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


class InformationsClientController extends AbstractController
{
    /**
     * @Route("/profil", name="profil_client")
     */
    public function index(ClientRepository $client): Response
    {
        $profil = $client->findOneBy(['users' => $this->getUser()]);


        return $this->render('profil/index.html.twig', [
            'profil' => $profil,
        ]);
    }

    /**
     * @Route("/profil/post", name="post_client")
     */
    public function AjoutClient(ClientRepository $client, EntityManagerInterface $manager, Request $request)
    {
        if (!$client->findOneBy(['users' => $this->getUser()])) {
            $profil = new Client();
        } else {
            $profil = $client->findOneBy(['users' => $this->getUser()]);
        }
        if ($request->getMethod() == 'POST') {
            $nom = $request->get('nom');
            $prenom = $request->get('prenom');
            $adresse = $request->get('adresse');
            $ville = $request->get('ville');
            $cp = $request->get('cp');
            $telephone = $request->get('telephone');
            $type = $request->get('type');

            $profil->setNom($nom);
            $profil->setPrenom($prenom);
            $profil->setAdresse($adresse);
            $profil->setVille($ville);
            $profil->setCp($cp);
            $profil->setTelephone($telephone);
            $profil->setType($type);

            if (!$client->findOneBy(['users' => $this->getUser()])) {

                $profil->setUsers($this->getUser());
                $manager->persist($profil);
            }
        }

        $manager->flush();
        return $this->redirectToRoute('informations_client');
    }
}
