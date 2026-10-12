-- Q6. Member vs non-member program loyalitas
SELECT Customer_Loyalty_Program_Member,
       AVG(Purchase_Amount) AS rata_rata_pembelian,
       AVG(Frequency_of_Purchase) AS rata_rata_frekuensi
FROM `your_project.your_dataset.surya_hub`
GROUP BY Customer_Loyalty_Program_Member;
