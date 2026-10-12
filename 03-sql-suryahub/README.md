# Mission 3: Analisis Loyalitas Pelanggan SuryaHub (SQL)

Tujuh pertanyaan bisnis tentang loyalitas dan perilaku belanja pelanggan SuryaHub, dijawab dengan **SQL di Google BigQuery**. Query ada di folder [queries](queries). Nama tabel pada query adalah placeholder (`your_project.your_dataset.surya_hub`).

## Hasil dan Insight

| No | Pertanyaan | Hasil | Insight dan rekomendasi |
|---|---|---|---|
| 1 | Total transaksi pelanggan perempuan ([q01](queries/q01_female_transactions.sql)) | 265 | Perempuan adalah kontributor transaksi yang signifikan. Pertimbangkan promosi khusus untuk meningkatkan retensi mereka. |
| 2 | Lima kota dengan pelanggan terbanyak ([q02](queries/q02_top5_cities.sql)) | Makassar 95, Jakarta 89, Bandung 82, Medan 78, Surabaya 78 | Basis pelanggan terkonsentrasi di kota besar. Jadikan Makassar dan Jakarta pilot area kampanye loyalitas sebelum diperluas. |
| 3 | Pelanggan Brand_Loyalty = 5 dan penggunaan diskon ([q03](queries/q03_brand_loyalty_5_discount.sql)) | 105 pelanggan. Diskon dipakai 46, tidak dipakai 60 (sekitar 57% tidak memakai diskon) | Pelanggan paling loyal cenderung tidak bergantung pada diskon, jadi insentif non-harga lebih relevan untuk mereka. |
| 4 | Perilaku belanja per Purchase_Intent ([q04](queries/q04_purchase_intent.sql)) | Planned: Rp4.338.039, frekuensi 6,94. Need-based: Rp4.298.638, 6,87. Wants-based: Rp4.165.559, 6,83. Impulsive: Rp4.140.152, 6,68 | Pembeli terencana (Planned) paling bernilai. Dorong lewat wishlist, notifikasi restock, atau pre-order. |
| 5 | Pola pembelian antar channel ([q05](queries/q05_purchase_channel.sql)) | Mixed: Rp4.459.349, 6,56. In-Store: Rp4.139.818, 7,14. Online: Rp4.098.097, 6,81 | Mixed memiliki nilai pembelian tertinggi, In-Store paling sering. Dorong strategi omnichannel (misalnya klik-lalu-ambil di toko). |
| 6 | Member vs non-member ([q06](queries/q06_loyalty_member_vs_non_member.sql)) | Member: Rp4.104.058, frekuensi 6,68. Non-member: Rp4.375.335, 6,99 | Program loyalitas belum mendorong belanja lebih banyak atau lebih sering. Evaluasi ulang manfaat program. |
| 7 | Sepuluh pelanggan dengan pembelian tertinggi ([q07](queries/q07_top10_customers.sql)) | Tersebar di Bandung, Surabaya, Papua, Makassar, dan Jakarta, dengan channel dan Brand_Loyalty (1 sampai 5) yang bervariasi | Nilai belanja tinggi tidak selalu diikuti loyalitas brand tinggi. Buat program retensi personal untuk top spender dengan loyalitas rendah. |

## Catatan Interpretasi

- Selisih pada pertanyaan 4 kecil (nilai pembelian Planned sekitar 4,8% di atas Impulsive, frekuensi sekitar 3,9%) dan belum diuji signifikansi statistik, sehingga kesimpulannya bersifat indikatif.
- Pada pertanyaan 6, non-member lebih tinggi sekitar 6,6% pada nilai pembelian dan sekitar 4,6% pada frekuensi. Ini juga belum diuji secara statistik, jadi lebih tepat dibaca sebagai "program belum terbukti efektif".
- Pada pertanyaan 3, `COUNT(DISTINCT Customer_ID)` menghasilkan 105 sedangkan jumlah baris 106 (46 + 60). Kemungkinan ada satu Customer_ID yang muncul dua kali di dataset.

## Tools
SQL (Google BigQuery)
