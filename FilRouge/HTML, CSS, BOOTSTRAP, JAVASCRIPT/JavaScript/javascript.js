var check = document.getElementById('envoie');
check.addEventListener("click", function verif(event)
{

    var Identité = /(^[A-Z]+[a-zA-Zéèêëôœîïûüàáâæç-\s]+$)/;
    var mail = /(^[\w\.-]+@[a-z]+[\.]{1}[a-z]{2,3}$)/;
    var mail1 = /(^[\w\.-]+@[a-z]+[\.]{1}[a-z]{2,3}$)/;

    var nom = document.getElementById("nom").value;
    var prenom = document.getElementById("prenom").value;
    var email = document.getElementById("mail").value;
    var email1 = document.getElementById("mail1").value;
    var mdp = document.getElementById("mdp").value;
    var mdp1 = document.getElementById("mdp1").value;


    // Pour le nom //
    if (document.getElementById("nom").value == "") 
    {
        document.getElementById("erreurName").textContent = "Veuillez saisir votre nom !";
        document.getElementById("erreurName").style.color = 'red';
        event.preventDefault() ;
    }
    else if (!Identité.test(nom))
    {
        document.getElementById("erreurName").textContent = "Veuillez remplir cette case avec des caractères spécifiques !";
        document.getElementById("erreurName").style.color = 'orange';
        event.preventDefault();  
    }
    else
    {
        document.getElementById("erreurName").textContent = "Ce champ est valide.";
        document.getElementById("erreurName").style.color = 'blue';
    }


    
    // Pour le prénom //
    if (document.getElementById("prenom").value == "") 
    {
        document.getElementById("erreurPrenom").textContent = "Veuillez saisir votre prénom !";
        document.getElementById("erreurPrenom").style.color = 'red';
        event.preventDefault() ;
    }
    else if (!Identité.test(prenom))
    {
        document.getElementById("erreurPrenom").textContent = "Veuillez remplir cette case avec des caractères spécifiques !";
        document.getElementById("erreurPrenom").style.color = 'orange';
        event.preventDefault();
    }
    else
    {
        document.getElementById("erreurPrenom").textContent = "Ce champ est valide.";
        document.getElementById("erreurPrenom").style.color = 'blue';
    }

        // Pour le mail //
        if (document.getElementById("mail").value == "") 
        {
            document.getElementById("erreurMail").textContent = "Veuillez saisir votre adresse mail !";
            document.getElementById("erreurMail").style.color = 'red';
            event.preventDefault() ;  
        }
        else if (!mail.test(email)) 
        {
            document.getElementById("erreurMail").textContent = "L'adresse e-mail saisie n'est pas valide !";
            document.getElementById("erreurMail").style.color = 'orange';
            event.preventDefault();
        }
        else 
        {
            document.getElementById("erreurMail").textContent = "Ce champ est valide.";
            document.getElementById("erreurMail").style.color = 'blue';
        }

        //Confirmation mail //
        if (document.getElementById("mail1").value == "") 
        {
            document.getElementById("erreurMail1").textContent = "Veuillez saisir votre adresse mail !";
            document.getElementById("erreurMail1").style.color = 'red';
            event.preventDefault() ;  
        }
        else if (!mail.test(email1)) 
        {
            document.getElementById("erreurMail1").textContent = "L'adresse e-mail saisie n'est pas valide !";
            document.getElementById("erreurMail1").style.color = 'orange';
            event.preventDefault();
        }
        else 
        {
            document.getElementById("erreurMail1").textContent = "Ce champ est valide.";
            document.getElementById("erreurMail1").style.color = 'blue';
        }

        // Pour le mdp //
        if (document.getElementById("mdp").value == "") 
        {
            document.getElementById("erreurMDP").textContent = "Veuillez saisir un mot de passe !";
            document.getElementById("erreurMDP").style.color = 'red';
            event.preventDefault() ;  
        }
        else 
        {
            document.getElementById("erreurMDP").textContent = "Ce champ est valide.";
            document.getElementById("erreurMDP").style.color = 'blue';
        }
        
        //Confirmation mdp //
        if (document.getElementById("mdp1").value == "") 
        {
            document.getElementById("erreurMDP1").textContent = "Veuillez saisir un mot de passe !";
            document.getElementById("erreurMDP1").style.color = 'red';
            event.preventDefault() ;  
        }
        else 
        {
            document.getElementById("erreurMDP1").textContent = "Ce champ est valide.";
            document.getElementById("erreurMDP1").style.color = 'blue';
        }
});