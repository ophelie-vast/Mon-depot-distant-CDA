var check = document.getElementById('envoie');
check.addEventListener("click", function verif(event)


{
    var Identité = /(^[A-Z]+[a-zA-Zéèêëôœîïûüàáâæç-\s]+$)/;
        // Pour le nom //
        var nom = document.getElementById("nom").value;

    if (document.getElementById("nom").value == "") 
    {
        document.getElementById("erreurName").textContent = "Ce champ est vide.";
        document.getElementById("erreurName").style.color = 'red';
        event.preventDefault() ;
    }
    else if (!Identité.test(nom))
    {
        document.getElementById("erreurName").textContent = "Veuillez remplir cette case avec des caractères spécifiques.";
        document.getElementById("erreurName").style.color = 'blue';
        event.preventDefault();  
    }
    else
    {
        document.getElementById("erreurName").textContent = "Ce champ est valide.";
        document.getElementById("erreurName").style.color = 'green';
    }
    
    
       // Pour le prénom //
       var prenom = document.getElementById("prenom").value;

    if (document.getElementById("prenom").value == "") 
    {
        document.getElementById("erreurPrenom").textContent = "Ce champ est vide.";
        document.getElementById("erreurPrenom").style.color = 'red';
        event.preventDefault() ;
    }
    else if (!Identité.test(prenom))
    {
        document.getElementById("erreurPrenom").textContent = "Veuillez remplir cette case avec des caractères spécifiques.";
        document.getElementById("erreurPrenom").style.color = 'blue';
        event.preventDefault();
    }
    else
    {
        document.getElementById("erreurPrenom").textContent = "Ce champ est valide.";
        document.getElementById("erreurPrenom").style.color = 'green';
    }


        
    // Pour le mail //
    var mail = /(^[\w\.-]+@[a-z]+[\.]{1}[a-z]{2,3}$)/;
    var email = document.getElementById("mail").value;
    if (document.getElementById("mail").value == "") 
    {
        document.getElementById("erreurMail").textContent = "ce champ est vide.";
        document.getElementById("erreurMail").style.color = 'red';
        event.preventDefault() ;  
    }
    else if (!mail.test(email)) 
    {
        document.getElementById("erreurMail").textContent = "L'adresse e-mail saisie n'est pas valide.";
        document.getElementById("erreurMail").style.color = 'blue';
        event.preventDefault();
    }
    else 
    {
        document.getElementById("erreurMail").textContent = "Ce champ est valide.";
        document.getElementById("erreurMail").style.color = 'green';
    }

    // Pour choix du sujet //
    if (sujet == 1)
    {
        document.getElementById("erreurSujet").textContent = "Ce champ est vide.";
        document.getElementById("erreurSujet").style.color = 'red';
        event.preventDefault();
    }
    else 
    {
        document.getElementById("erreurSujet").textContent = "Ce champ est valide.";
        document.getElementById("erreurSujet").style.color = 'green';
    }

   
    // Pour la rédaction du mail //
    if (document.getElementById("question").value == "") 
    {
        document.getElementById("erreurQuest").textContent = "Ce champ est vide.";
        document.getElementById("erreurQuest").style.color = 'red';
        event.preventDefault() ;
    }
    else 
    {
        document.getElementById("erreurQuest").textContent = "Ce champ est valide.";
        document.getElementById("erreurQuest").style.color = 'green';
    }
});