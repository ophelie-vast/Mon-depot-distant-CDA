<?php

namespace App\Controller;

use App\Entity\Produit;
use App\Form\ProduitType;
use App\Repository\ProduitRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/admin")
 */
class AdminController extends AbstractController
{
    /**
     * @Route("/", name="admin_index", methods={"GET"})
     */
    public function index(ProduitRepository $produitRepository): Response
    {
        return $this->render('admin/index.html.twig', [
            'produits' => $produitRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="admin_new", methods={"GET", "POST"})
     */
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $produit = new Produit();
        $form = $this->createForm(ProduitType::class, $produit);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $photoType = array("image/jpeg", "image/jpg", "image/png");
            $fichierobjet = $request->files->get('produit');
            $fichier = $fichierobjet['photo'];

            if (in_array($fichier->getClientMimeType(), $photoType)) {
                if ($fichier->move('assets/images/produits/', $fichier->getClientOriginalName())) {
                    $produit->setPhoto($fichier->getClientOriginalName());
                    $entityManager->persist($produit);
                    $entityManager->flush();

                    return $this->redirectToRoute('admin_index', [], Response::HTTP_SEE_OTHER);
                }
            }
        }
        return $this->renderForm('admin/new.html.twig', [
            'produit' => $produit,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="admin_show", methods={"GET"})
     */
    public function show(Produit $produit): Response
    {
        return $this->render('admin/show.html.twig', [
            'produit' => $produit,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="admin_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, Produit $produit, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(ProduitType::class, $produit);
        $form->handleRequest($request);
        $produit->setPhoto($produit->getPhoto());

        if ($form->isSubmitted() && $form->isValid()) {
            $photoType = array("image/jpeg", "image/jpg", "image/png");
            $fichierobjet = $request->files->get('produit');

            $fichier = $fichierobjet['photo'];
            if (!empty($fichier)&& in_array($fichier->getClientmimeType(), $photoType)) {
                if ($fichier->move('assets/images/produits/', $fichier->getClientOriginalName())) {
                    $produit->setPhoto($fichier->getClientOriginalName());
                }

            }

            $entityManager->flush();

            return $this->redirectToRoute('admin_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('admin/edit.html.twig', [
            'produit' => $produit,
            'form' => $form,
        ]);
    }

    /**
     * @Route("/{id}", name="admin_delete", methods={"POST"})
     */
    public function delete(Request $request, Produit $produit, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete' . $produit->getId(), $request->request->get('_token'))) {
            $entityManager->remove($produit);
            $entityManager->flush();
        }

        return $this->redirectToRoute('admin_index', [], Response::HTTP_SEE_OTHER);
    }
}
