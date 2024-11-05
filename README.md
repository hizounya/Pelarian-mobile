1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

Stateless widget adalah widget yang tidak berubah setelah dirender, cocok untuk UI statis (misalnya, teks atau ikon). Stateful widget bisa berubah-ubah saat aplikasi berjalan, karena dapat memiliki "state" yang dinamis. Contohnya adalah widget yang membutuhkan interaksi pengguna.

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

-  Scaffold: Struktur dasar halaman dengan app bar dan body.
- AppBar: Menampilkan judul di bagian atas halaman.
- Text: Menampilkan teks.
- Container: Mengatur layout seperti warna, margin, dan ukuran.
- Row & Column: Menyusun widget secara horizontal atau vertikal.
- GridView: Menampilkan widget dalam bentuk grid.
- Card: Menyusun konten dalam bentuk kartu.
- InkWell: Memberikan efek klik pada widget.

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

setState() memberi tahu Flutter untuk memperbarui tampilan sesuai perubahan state. Variabel dalam State class yang diubah dalam setState() akan menyebabkan widget tersebut di-render ulang.

4. Jelaskan perbedaan antara const dengan final.

const digunakan untuk nilai yang tetap sejak kompilasi, sementara final bisa ditetapkan sekali saat runtime.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

    - Membuat Layout: Menggunakan Scaffold, Column, Row, dan GridView.
    - Interaksi dengan setState(): Menggunakan setState() untuk memperbarui UI saat pengguna berinteraksi.
    - Penggunaan const & final: const untuk nilai statis, final untuk nilai tetap yang didapat saat runtime.