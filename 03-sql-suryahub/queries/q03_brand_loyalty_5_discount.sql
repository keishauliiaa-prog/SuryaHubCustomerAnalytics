-- Q3a. Jumlah pelanggan dengan Brand_Loyalty = 5
SELECT COUNT(DISTINCT Customer_ID) AS jumlah_pelanggan_loyal
FROM `your_project.your_dataset.surya_hub`
WHERE Brand_Loyalty = 5;

-- Q3b. Apakah pelanggan tersebut cenderung memakai diskon?
SELECT Discount_Used, COUNT(*) AS jumlah
FROM `your_project.your_dataset.surya_hub`
WHERE Brand_Loyalty = 5
GROUP BY Discount_Used;
