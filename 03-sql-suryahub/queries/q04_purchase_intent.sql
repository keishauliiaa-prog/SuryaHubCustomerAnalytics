-- Q4. Perilaku belanja berdasarkan Purchase_Intent
SELECT Purchase_Intent,
       AVG(Purchase_Amount) AS rata_rata_pembelian,
       AVG(Frequency_of_Purchase) AS rata_rata_frekuensi,
       COUNT(*) AS jumlah_transaksi
FROM `your_project.your_dataset.surya_hub`
GROUP BY Purchase_Intent
ORDER BY rata_rata_pembelian DESC;
