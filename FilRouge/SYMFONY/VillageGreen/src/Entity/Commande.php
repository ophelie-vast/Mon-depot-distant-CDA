<?php

namespace App\Entity;

use App\Repository\CommandeRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=CommandeRepository::class)
 */
class Commande
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="date")
     */
    private $date_commande;

    /**
     * @ORM\Column(type="date", nullable=true)
     */
    private $date_reglement;

    /**
     * @ORM\Column(type="date", nullable=true)
     */
    private $date_livraison;

    /**
     * @ORM\OneToMany(targetEntity=DetailCommande::class, mappedBy="commande")
     */
    private $detailCommandes;

    /**
     * @ORM\ManyToOne(targetEntity=Client::class, inversedBy="commandes")
     * @ORM\JoinColumn(nullable=false)
     */
    private $client;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $adresse_facturation;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $ville_facturation;

    /**
     * @ORM\Column(type="string", length=5)
     */
    private $cp_facturation;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $adresse_livraison;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $ville_livraison;

    /**
     * @ORM\Column(type="string", length=5)
     */
    private $cp_livraison;

    public function __construct()
    {
        $this->detailCommandes = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDateCommande(): ?\DateTimeInterface
    {
        return $this->date_commande;
    }

    public function setDateCommande(\DateTimeInterface $date_commande): self
    {
        $this->date_commande = $date_commande;

        return $this;
    }

    public function getDateReglement(): ?\DateTimeInterface
    {
        return $this->date_reglement;
    }

    public function setDateReglement(\DateTimeInterface $date_reglement): self
    {
        $this->date_reglement = $date_reglement;

        return $this;
    }

    public function getDateLivraison(): ?\DateTimeInterface
    {
        return $this->date_livraison;
    }

    public function setDateLivraison(\DateTimeInterface $date_livraison): self
    {
        $this->date_livraison = $date_livraison;

        return $this;
    }

    /**
     * @return Collection|DetailCommande[]
     */
    public function getDetailCommandes(): Collection
    {
        return $this->detailCommandes;
    }

    public function addDetailCommande(DetailCommande $detailCommande): self
    {
        if (!$this->detailCommandes->contains($detailCommande)) {
            $this->detailCommandes[] = $detailCommande;
            $detailCommande->setCommande($this);
        }

        return $this;
    }

    public function removeDetailCommande(DetailCommande $detailCommande): self
    {
        if ($this->detailCommandes->removeElement($detailCommande)) {
            // set the owning side to null (unless already changed)
            if ($detailCommande->getCommande() === $this) {
                $detailCommande->setCommande(null);
            }
        }

        return $this;
    }

    public function getClient(): ?Client
    {
        return $this->client;
    }

    public function setClient(?Client $client): self
    {
        $this->client = $client;

        return $this;
    }

    public function getAdresseFacturation(): ?string
    {
        return $this->adresse_facturation;
    }

    public function setAdresseFacturation(string $adresse_facturation): self
    {
        $this->adresse_facturation = $adresse_facturation;

        return $this;
    }

    public function getVilleFacturation(): ?string
    {
        return $this->ville_facturation;
    }

    public function setVilleFacturation(string $ville_facturation): self
    {
        $this->ville_facturation = $ville_facturation;

        return $this;
    }

    public function getCpFacturation(): ?string
    {
        return $this->cp_facturation;
    }

    public function setCpFacturation(string $cp_facturation): self
    {
        $this->cp_facturation = $cp_facturation;

        return $this;
    }

    public function getAdresseLivraison(): ?string
    {
        return $this->adresse_livraison;
    }

    public function setAdresseLivraison(string $adresse_livraison): self
    {
        $this->adresse_livraison = $adresse_livraison;

        return $this;
    }

    public function getVilleLivraison(): ?string
    {
        return $this->ville_livraison;
    }

    public function setVilleLivraison(string $ville_livraison): self
    {
        $this->ville_livraison = $ville_livraison;

        return $this;
    }

    public function getCpLivraison(): ?string
    {
        return $this->cp_livraison;
    }

    public function setCpLivraison(string $cp_livraison): self
    {
        $this->cp_livraison = $cp_livraison;

        return $this;
    }
}
