import 'package:flutter/material.dart';

import '../core/services/api_service.dart';

// Make sure to import your DonatePage and AboutPage

///import 'donate_page.dart'; // Replace with your actual import

//import 'about_page.dart'; // Replace with your actual import

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override

  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  late Future<Map<String, dynamic>> dailyQuote;

  @override

  void initState() {

    super.initState();

    dailyQuote = ApiService.fetchDailyQuote();

  }

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: const Text("Daily Quote")),

      drawer: Drawer(

        child: ListView(

          children: [

            const DrawerHeader(

              decoration: BoxDecoration(color: Colors.blue),

              child: Text(

                "Quotely",

                style: TextStyle(color: Colors.white, fontSize: 24),

              ),

            ),

            ListTile(

              title: const Text("Donate"),

              onTap: () {

                Navigator.push(

                  context,

                  MaterialPageRoute(builder: (_) => const DonatePage()),

                );

              },

            ),

            ListTile(

              title: const Text("About Us"),

              onTap: () {

                Navigator.push(

                  context,

                  MaterialPageRoute(builder: (_) => const AboutPage()),

                );

              },

            ),

          ],

        ),

      ),

      body: FutureBuilder<Map<String, dynamic>>(

        future: dailyQuote,

        builder: (context, snapshot) {

          if (snapshot.connectionState == ConnectionState.waiting) {

            return const Center(child: CircularProgressIndicator());

          }

          if (snapshot.hasError) {

            return const Center(child: Text("Error loading quote"));

          }

          final quote = snapshot.data!;

          return Center(

            child: Card(

              margin: const EdgeInsets.all(20),

              child: Padding(

                padding: const EdgeInsets.all(16),

                child: Column(

                  mainAxisSize: MainAxisSize.min,

                  children: [

                    Text(

                      quote["quote"],

                      textAlign: TextAlign.center,

                      style: const TextStyle(fontSize: 22),

                    ),

                    const SizedBox(height: 10),

                    Text("- ${quote["author"]}"),

                    IconButton(

                      icon: const Icon(Icons.refresh),

                      onPressed: () {

                        setState(() {

                          dailyQuote = ApiService.fetchDailyQuote();

                        });

                      },

                    )

                  ],

                ),

              ),

            ),

          );

        },

      ),

    );

  }

}