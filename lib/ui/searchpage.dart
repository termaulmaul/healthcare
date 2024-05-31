import 'package:flutter/material.dart';
import '../utils/routes.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<Map<String, String>> articles = [
    {
      'title': 'Apa Itu Kanker',
      'content':
          'This article will look at this subject, providing a brief overview of this subject.',
      'image': 'assets/images/article_logo1.png',
    },
    {
      'title': 'Tanda-Tanda Jantung Bocor',
      'content':
          'This article will look at this subject, providing a brief overview of this subject.',
      'image': 'assets/images/article_logo2.png',
    },
    {
      'title': 'Cegah Diabetes Dengan Ini',
      'content':
          'This article will look at this subject, providing a brief overview of this subject.',
      'image': 'assets/images/article_logo3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey), // Ubah warna ikon
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.blue), // Ubah warna ikon
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check, color: Colors.grey), // Ubah warna ikon
            label: 'Check',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey), // Ubah warna ikon
            label: 'Profile',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          // Handle navigasi berdasarkan indeks
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, rHome);
              break;
            case 1:
              // Do nothing, we're already on Search Page
              break;
            case 2:
              // Navigate to Check Page
              break;
            case 3:
              // Navigate to Profile Page
              break;
          }
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            // Search Box
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.shade200,
              ),
            ),
            const SizedBox(height: 16),

            // Category Filters
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCategoryChip('All', isSelected: true),
                  _buildCategoryChip('Jantung'),
                  _buildCategoryChip('Ginjal'),
                  _buildCategoryChip('THT'),
                  _buildCategoryChip('Syariah'),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Articles List
            Expanded(
              child: ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  final article = articles[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, rArticle); // Navigasi ke article_page.dart
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(8.0),
                        leading: Image.asset(article['image']!),
                        title: Text(
                          article['title']!,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(article['content']!),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label, {bool isSelected = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: ChoiceChip(
        label: Text(label),
        selected: isSelected,
        onSelected: (selected) {
          // Handle category selection
        },
        selectedColor: Colors.blue,
        backgroundColor: Colors.grey.shade200,
        labelStyle: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
