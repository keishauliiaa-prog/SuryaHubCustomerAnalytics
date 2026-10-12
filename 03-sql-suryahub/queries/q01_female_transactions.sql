-- Q1. Jumlah total transaksi (bukan nominal) yang dilakukan pelanggan perempuan
SELECT COUNT(*) AS total_transaksi_perempuan
FROM `your_project.your_dataset.surya_hub`
WHERE Gender = 'Female';
