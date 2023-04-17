-- modifier une donnée dans un tableau, ici passer le prix du VIP avec id 13 Ã  150 au lieux de 200 : 

UPDATE `statut` SET `prix` = '150' WHERE `statut`.`id_statut` = 13;

--exemple d'alteration

ALTER TABLE assurances 
ADD COLUMN mail_assurance varchar, 
ADD CONSTRAINT `fk_id_assurance` FOREIGN KEY (id_assurance) REFERENCES assurance (id_assurance ON DELETE SET NULL ON UPDATE CASCADE);
