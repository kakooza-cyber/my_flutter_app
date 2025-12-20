import 'package:flutter/material.dart';

import '../core/services/submission_service.dart';

class SubmitQuotePage extends StatefulWidget {

  const SubmitQuotePage({super.key});

  @override

  State<SubmitQuotePage> createState() => _SubmitQuotePageState();

}

class _SubmitQuotePageState extends State<SubmitQuotePage> {

  final textController = TextEditingController();

  final authorController = TextEditingController();

  final categoryController = TextEditingController();

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: const Text("Submit Quote")),

      body: Padding(

        padding: const EdgeInsets.all(16),

        child: Column(

          children: [

            TextField(

              controller: textController,

              decoration: const InputDecoration(labelText: "Quote"),

            ),

            TextField(

              controller: authorController,

              decoration: const InputDecoration(labelText: "Author"),

            ),

            TextField(

              controller: categoryController,

              decoration: const InputDecoration(labelText: "Category"),

            ),

            const SizedBox(height: 20),

            ElevatedButton(

              onPressed: () async {

                await SubmissionService.submitQuote(

                  text: textController.text,

                  author: authorController.text,

                  category: categoryController.text,

                );

                ScaffoldMessenger.of(context).showSnackBar(

                  const SnackBar(content: Text("Submitted for review")),

                );

              },

              child: const Text("Submit"),

            ),

          ],

        ),

      ),

    );

  }

}