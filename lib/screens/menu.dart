import 'package:flutter/material.dart';
import 'package:pelarian/screens/itementry.dart';
import 'package:pelarian/widgets/item_card.dart';
import 'package:pelarian/widgets/left_drawer.dart';

class MyHomePage extends StatelessWidget {
  final String npm = '2306245661';
  final String name = 'Hizounya Maycinto';
  final String className = 'B';

  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Item", Icons.view_list, Colors.blueGrey),
    ItemHomepage("Tambah Item", Icons.add, const Color.fromARGB(255, 216, 158, 234)),
    ItemHomepage("Logout", Icons.logout, const Color.fromARGB(255, 178, 69, 69)),
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Pelarian',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InfoCard(title: 'NPM', content: npm),
                  InfoCard(title: 'Name', content: name),
                  InfoCard(title: 'Class', content: className),
                ],
              ),
              const SizedBox(height: 16.0),
              Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Welcome to Pelarian',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    // Wrap the GridView in a Flexible or Expanded widget
                    GridView.count(
                      primary: false,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      children: items.map((ItemHomepage item) {
                        return ItemCard(item);
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              content,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
