import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String userName;

  MyHomePage({required this.userName});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello ${widget.userName}'),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () => Navigator.pushNamed(context, '/home'),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => Navigator.pushNamed(context, '/search'),
          ),
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () => Navigator.pushNamed(context, '/check'),
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () => Navigator.pushNamed(context, '/profile'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian Jadwal
              Container(
                color: Colors.pink[100],
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '07.00-08.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Yoga Morning',
                            style: TextStyle(fontSize: 14),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Done'),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/yoga.png',
                      width: 80,
                      height: 80,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                color: Colors.lightBlue[100],
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '12.00-13.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Breakfast',
                            style: TextStyle(fontSize: 14),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Done'),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/breakfast.png',
                      width: 80,
                      height: 80,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),

              // Bagian Artikel Populer
              Text(
                'Populer Artikel',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Image.asset(
                        'assets/article${index + 1}.png',
                        width: 60,
                        height: 60,
                      ),
                      title: Text(
                        'Artikel ${index + 1}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'This article will look at this subject, providing a brief overview of this subject.',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: 'Check',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/home');
              break;
            case 1:
              Navigator.pushNamed(context, '/search');
              break;
            case 2:
              Navigator.pushNamed(context, '/check');
              break;
            case 3:
              Navigator.pushNamed(context, '/profile');
              break;
          }
        },
      ),
    );
  }
}
