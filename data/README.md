# Data

Dataset yang dipakai adalah dataset latihan dari program bootcamp. Data mentah **tidak** disertakan di repository ini.

| Mission | Dataset | Isi |
|---|---|---|
| 1 (Excel) | SuryaMart | 1.000 pelanggan. Kolom: Customer_ID, Age, Gender, Income_Level, Location, Purchase_Category, Purchase_Amount (Rp), Frequency_of_Purchase, Social_Media_Influence, Discount_Used |
| 2 (Python) | Kopi NangKau (`penjualan_kopi_2021_2023.csv`) | 6.600 baris penjualan harian 6 produk, 2021 sampai 2023. Kolom: Tahun, Bulan, Tanggal, Produk, Unit_Terjual, Harga_Per_Unit. Pemisah kolom: titik koma |
| 3 dan 4 (SQL dan Dashboard) | SuryaHub | Data pelanggan e-commerce, antara lain: Customer_ID, Gender, Location, Brand_Loyalty, Purchase_Channel, Purchase_Intent, Purchase_Amount, Frequency_of_Purchase, Customer_Loyalty_Program_Member, Discount_Used |

## Cara menjalankan notebook Python

Notebook di `02-python-kopi-nangkau` mengunduh dataset-nya sendiri lewat perintah `gdown` pada sel kedua, sehingga cukup dibuka di Google Colab lalu dijalankan dengan Runtime > Run all.

## Catatan SQL

Query pada `03-sql-suryahub/queries` memakai nama tabel placeholder `your_project.your_dataset.surya_hub`. Ganti dengan nama project, dataset, dan tabel BigQuery milikmu sendiri.
