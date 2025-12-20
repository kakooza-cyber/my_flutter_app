import 'package:flutter/material.dart';

import '../core/services/api_service.dart';

class QuotesPage extends StatelessWidget {

  const QuotesPage({super.key});

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: const Text("Quotes")),

      body: FutureBuilder<List<Map<String, dynamic>>>(

        future: ApiService.fetchQuotes(),

        builder: (context, snapshot) {

          if (!snapshot.hasData) {

            return const Center(child: CircularProgressIndicator());

          }

          final quotes = snapshot.data!;

          return ListView.builder(

            itemCount: quotes.length,

            itemBuilder: (_, index) {

              return Card(

                margin: const EdgeInsets.all(10),

                child: ListTile(

                  title: Text(quotes[index]["quote"]),

                  subtitle: Text(quotes[index]["author"]),

                  trailing: IconButton(

                    icon: const Icon(Icons.share),

                    onPressed: () {},

                  ),

                ),

              );

            },

          );

        },

      ),

    );

  }

}