//Question 4: Quelle marque de véhicule a réalisé le plus grand profit au cours de l’annee dernier?

SELECT MARQUE, MAX(SUM(REVENU)) AS PROFIT
FROM FACTRESERVATION r JOIN DIMVEHICULE v ON r.idVehicule = v.idVehicule
                    JOIN DIMDATE d ON r.idReservation = d.idReservation
WHERE d.DATE IS BETWEEN 01-01-2020 AND 31-12-2020
GROUP BY v.MARQUE;


//Question 8:  Quel type de réservation de véhicule a généré le moins de profit?

SELECT r.typeReservation, MIN(SUM(REVENU)) AS PROFIT
FROM FACTRESERVATION fr JOIN DIMRESERVATION dr ON fr.idReservation = dr.idReservation
GROUP BY dr.typeReservation;

//Quel est le revenu total qui a été réalisé par chaque type de promotion?

SELECT d.typePromotion, sum(revenueReservation) AS REVENU
FROM  FACTRESERVATION r JOIN DIMPromotion p ON r.idPromotion = p.idPromotion
GROUP BY p.typePromotion;

