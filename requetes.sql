/* a */
select montant
From "projet" ;
/* b */
select nom
From architecte
where architecte.idarchi = 3 ;
/* c*/
select nom, prenom
From client
Where client.adresse = 'valenciennes' ;
/* d */
select intitule
From projet
Where projet.montant > 30000 ;
/* e */
select "Chantier".budget
From "Chantier",artisan
WHERE artisan.nom = 'dupont';
/* f */
select intitule
from projet, architecte
where architecte.idarchi = projet.idarchi
and architecte.fonction = 'chef ' ;
/* g */
select nom
from artisan,"Chantier"
where artisan.idartisan="Chantier"."idChantier"
and "Chantier"."idChantier"= 2;
/* h */
select nom
from artisan
where artisan.nom not in (
    select nom
      from artisan,"Chantier"
      where artisan.idartisan="Chantier"."idChantier"
      and "Chantier"."idChantier"= 2
    );
/* i */
select artisan.nom
from artisan, client,"Chantier",projet
where client.nom= 'dupont'
and "Chantier"."idArtisan"=artisan.idartisan
and client."idClient"= projet.idclient
and projet.idprojet="Chantier"."idProjet";
/* j */
select sum(budget)
from projet , client , "Chantier"
where client.nom= 'dupont'
and projet.idclient=client."idClient"
and "Chantier"."idProjet"= projet.idprojet ;



