-- modifier une donnée dans un tableau, ici passer le prix du VIP avec id 13 à 150 au lieux de 200 : 

UPDATE `statut` SET `prix` = '150' WHERE `statut`.`id_statut` = 13;

--exemple d'alteration

ALTER TABLE assurances 
  ADD CONSTRAINT `fk_assurance_id_adresse` FOREIGN KEY (`id_adresse`) REFERENCES `adresse` (`id_adresse`) ON DELETE SET NULL ON UPDATE CASCADE
