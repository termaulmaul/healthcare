import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Waspada! Inilah Beberapa Gejala Diabetes Yang Perlu Kamu Tau!"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Glukometer
            Image.asset(
              'assets/images/glukometer.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            // Bagian Apa Itu Diabetes
            Text(
              "Apa Itu Diabetes?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Diabetes adalah kondisi di mana tubuh tidak dapat memproduksi atau menggunakan insulin secara efektif. Insulin adalah hormon yang diperlukan untuk mengubah glukosa (gula darah) menjadi energi. Tanpa insulin yang cukup, glukosa tetap dalam darah dan dapat menyebabkan komplikasi kesehatan serius.",
            ),
            SizedBox(height: 16),
            // Bagian Gejala Diabetes
            Text(
              "Gejala Diabetes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Gejala diabetes dapat bervariasi tergantung pada jenisnya. Beberapa gejala umum diabetes meliputi poliuria (sering buang air kecil), polidipsia (sering merasa haus), penurunan berat badan yang tidak dapat dijelaskan, kelelahan, dan pandangan kabur. Gejala tambahan diabetes tipe 1 dapat mencakup mual, muntah, dan napas berbau buah. Gejala tambahan diabetes tipe 2 dapat mencakup infeksi kulit yang sering, luka yang sulit sembuh, dan mati rasa atau kesemutan di kaki.",
            ),
            SizedBox(height: 16),
            // Bagian Tips Mengelola Diabetes
            Text(
              "Tips Mengelola Diabetes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Beberapa tips untuk mengelola diabetes meliputi menerapkan pola makan sehat dengan memperbanyak sayuran, buah-buahan, dan biji-bijian; berolahraga secara teratur untuk membantu mengontrol kadar gula darah; memantau kadar gula darah secara teratur menggunakan glukometer; mengonsumsi obat-obatan diabetes sesuai petunjuk dokter; menghindari merokok dan minum alkohol; serta menjaga berat badan yang sehat.",
            ),
            SizedBox(height: 16),
            // Kesimpulan
            Text(
              "Kesimpulan",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Halaman ini adalah sumber informasi yang berharga tentang diabetes. Halaman ini berisi informasi yang mudah dipahami tentang apa itu diabetes, gejala diabetes, dan cara mengelola diabetes. Halaman ini juga dilengkapi dengan gambar yang membantu pembaca memahami informasi tersebut.",
            ),
          ],
        ),
      ),
    );
  }
}
