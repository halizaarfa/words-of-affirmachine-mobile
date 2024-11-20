import 'package:flutter/material.dart';
import 'package:words_of_affirmachine/screens/menu.dart';
import 'package:words_of_affirmachine/screens/productentry_form.dart';
import 'package:words_of_affirmachine/screens/list_productentry.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Column(
                children: [
                  Text(
                    'Words of Affir-MACHINE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  Text(
                    "Specially Curated™",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),

                ],
              ),
          ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              // Bagian redirection ke MyHomePage
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Add Product'),
              // Bagian redirection ke ProductEntryFormPage
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductEntryFormPage()),
                );
              },
            ),
            ListTile(
                leading: const Icon(Icons.bubble_chart),
                title: const Text('Products'),
                onTap: () {
                    // Route menu ke halaman product
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProductEntryPage()),
                    );
                },
            ),
        ],
      ),
    );
  }
}