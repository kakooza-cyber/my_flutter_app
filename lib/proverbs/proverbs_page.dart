import 'package:flutter/material.dart';

class ProverbsPage extends StatelessWidget {

  const ProverbsPage({super.key});

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: const Text("Proverbs")),

      body: Column(

        children: [

          Padding(

            padding: const EdgeInsets.all(8),

            child: TextField(

              decoration: const InputDecoration(

                hintText: "Search proverbs...",

                prefixIcon: Icon(Icons.search),

              ),

            ),

          ),

          Expanded(

            child: ListView.builder(

              itemCount: 20,

              itemBuilder: (_, index) => ListTile(

                title: Text("Proverb ${index + 1}"),

                subtitle: const Text("Category: Happiness"),

              ),

            ),

          )

        ],

      ),

    );

  }

}