-- Q5. Perbandingan pola pembelian antar channel
SELECT Purchase_Channel,
       AVG(Purchase_Amount) AS rata_rata_pembelian,
       AVG(Frequency_of_Purchase) AS rata_rata_frekuensi,
       COUNT(*) AS jumlah_transaksi
FROM `your_project.your_dataset.surya_hub`
GROUP BY Purchase_Channel
ORDER BY rata_rata_pembelian DESC;
