# Mission 2: Kopi NangKau Sales Analysis (Python)

Pembersihan, analisis, dan visualisasi data penjualan harian 6 produk Kopi NangKau (2021 sampai 2023) menggunakan Python di Google Colab.

[![Open In Colab]([https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/USERNAME/suryahub-customer-analytics/blob/main/02-python-kopi-nangkau/kopi_nangkau_sales_analysis.ipynb](https://colab.research.google.com/github/keishauliiaa-prog/SuryaHubCustomerAnalytics/blob/main/02-python-kopi-nangkau/kopi_nangkau_sales_analysis.ipynb))

Notebook: [kopi_nangkau_sales_analysis.ipynb](kopi_nangkau_sales_analysis.ipynb)

## Yang Dikerjakan

1. **Eksplorasi data:** 6.600 baris, 6 kolom, 19 baris duplikat, dan 500 nilai kosong pada masing-masing kolom Produk, Unit_Terjual, dan Harga_Per_Unit.
2. **Pembersihan dan imputasi:**
   - Produk kosong dilengkapi dengan mencocokkan (tahun, harga) pada daftar harga resmi (463 baris).
   - Harga kosong dilengkapi dengan rumus kenaikan 2% per tahun (463 baris).
   - Dihapus: Produk dan Harga sama-sama kosong (37), Unit_Terjual kosong (497), duplikat (25).
   - Hasil akhir: **6.041 baris**.
3. **Feature engineering:** kolom Pendapatan dan Tanggal_Penjualan (datetime).
4. **Analisis per produk dan per tahun** dengan groupby serta visualisasi seaborn.
5. **Lima challenge:** tren bulanan, pertumbuhan, simulasi promo diskon, deteksi outlier, dan konsistensi harga.

## Temuan Utama

- Empat minuman terjual hampir sama banyak (39.265 sampai 39.859 unit). Croissant dan Donat terjual sekitar separuhnya.
- **Latte** memiliki pendapatan tertinggi (Rp1,13 miliar) karena harga, bukan volume. **Donat** terendah (Rp342 juta).
- Pendapatan per tahun: Rp1,53 M (2021), Rp1,53 M (2022), Rp1,55 M (2023). Kenaikan sekitar 1,4% berasal dari kenaikan harga (4% selama dua tahun), sementara unit terjual turun sekitar 2,6%.
- Total unit tertinggi: Maret 2022 (6.024). Terendah: Februari 2022 (5.011), sebagian besar karena Februari hanya 28 hari.
- Simulasi diskon 10% dengan kenaikan unit 15% pada minuman bulan Juli dan Agustus menghasilkan pendapatan +3,5% (Rp672 juta menjadi Rp696 juta), tetapi dampak ke laba belum bisa dinilai tanpa data margin.
- Tidak ada lonjakan penjualan di atas 3x median, dan tidak ada harga asli yang menyimpang dari aturan kenaikan 2% per tahun.

## Keterbatasan

Sekitar 8% hari-produk hilang karena baris dengan Unit_Terjual kosong dihapus (6.041 dari 6.570 baris seharusnya). Penghapusan ini tidak merata antar tahun, sehingga selisih total unit antar tahun yang kecil sebaiknya tidak dibaca sebagai tren. Notebook menyertakan pengecekan kelengkapan data dan rata-rata unit per hari untuk hal ini.

## Rekomendasi

1. Bundling minuman dan makanan (misalnya Latte + Croissant) untuk mendorong penjualan Donat dan Croissant.
2. Evaluasi promo diskon dengan laba, bukan hanya pendapatan.
3. Perbaiki pencatatan data (kolom kosong, duplikat, dan hari dengan penjualan 0 unit).

## Tools
Python, pandas, numpy, matplotlib, seaborn, Google Colab
