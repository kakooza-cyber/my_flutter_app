import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class DonatePage extends StatelessWidget {

  const DonatePage({super.key});

  final String donateUrl =

      "https://flutterwave.com/donate/YOUR_LINK_HERE";

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: const Text("Support Quotely")),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Text(

              "Support the makers of Quotely ❤️",

              textAlign: TextAlign.center,

            ),

            const SizedBox(height: 20),

            ElevatedButton(

              onPressed: () async {

                final uri = Uri.parse(donateUrl);

                if (await canLaunchUrl(uri)) {

                  launchUrl(uri, mode: LaunchMode.externalApplication);

                }

              },

              child: const Text("Donate"),

            ),

          ],

        ),

      ),

    );

  }

}