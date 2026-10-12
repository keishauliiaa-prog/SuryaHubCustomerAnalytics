-- Q7. Sepuluh pelanggan dengan total pembelian tertinggi
SELECT Customer_ID, Location, Purchase_Channel, Brand_Loyalty,
       SUM(Purchase_Amount) AS total_pembelian
FROM `your_project.your_dataset.surya_hub`
GROUP BY Customer_ID, Location, Purchase_Channel, Brand_Loyalty
ORDER BY total_pembelian DESC
LIMIT 10;
