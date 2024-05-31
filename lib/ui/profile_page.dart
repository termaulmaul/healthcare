import 'package:flutter/material.dart';
import '../utils/routes.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Pengguna"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Pengguna
            ClipOval(
              child: Image.asset(
                'assets/images/avatar.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            // Informasi Pengguna
            Text(
              "Informasi Pengguna",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text("Nama"),
              subtitle: Text("Andreas"),
            ),
            ListTile(
              title: Text("Email"),
              subtitle: Text("andreas@gmail.com"),
            ),
            ListTile(
              title: Text("Nomor Telepon"),
              subtitle: Text("+1234567890"),
            ),
            SizedBox(height: 16),
            // Bio Pengguna
            Text(
              "Bio",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget felis quis ligula eleifend dignissim. Nam fermentum viverra est, vel lobortis velit. Nulla facilisi.",
            ),
            SizedBox(height: 16),
            // Alamat Pengguna
            Text(
              "Alamat",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "123 Main Street, City, Country",
            ),
            SizedBox(height: 16),
            // Tombol Edit Profil
            ElevatedButton(
              onPressed: () {
                // Aksi saat tombol Edit Profil ditekan
              },
              child: Text("Edit Profil"),
            ),
            SizedBox(height: 8),
            // Tombol Logout
            ElevatedButton(
              onPressed: () {
                // Aksi saat tombol Logout ditekan
                // Misalnya, tampilkan dialog konfirmasi logout
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Logout"),
                      content: Text("Apakah Anda yakin ingin logout?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            // Proses logout
                            Navigator.of(context).pop(); // Tutup dialog
                          },
                          child: Text("Ya"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Tutup dialog
                          },
                          child: Text("Tidak"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
