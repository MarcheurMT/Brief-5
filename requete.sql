-- renvoie toutes les données dans la table club

select * from club

-- renvoie les données de la seule personne de la table qui s'appel Jakowski

select *
from sportif
where nom_sportif like 'Jakowski'

-- renvoie le nom et l'adresse de l'id 1 dans la table sportif

select nom_sportif, adresse_sportif
from sportif
where id=1

-- 

select statut_A, n_mois
from statut
where id_statut = statut.id
and  prix >= 100

-- jointure Ã  faire a partir de statut:

select nom_sportif, prenom_sportif, club, adress from club join adresse using(id_adresse) join sportif using(id_sportif)
