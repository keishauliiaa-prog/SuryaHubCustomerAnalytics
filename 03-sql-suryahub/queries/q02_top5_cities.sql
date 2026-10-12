-- Q2. Lima kota dengan jumlah pelanggan terbanyak
SELECT Location, COUNT(DISTINCT Customer_ID) AS jumlah_pelanggan
FROM `your_project.your_dataset.surya_hub`
GROUP BY Location
ORDER BY jumlah_pelanggan DESC
LIMIT 5;
