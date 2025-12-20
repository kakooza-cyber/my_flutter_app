import 'package:flutter/material.dart';

import '../home/home_page.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({super.key});

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      body: Padding(

        padding: const EdgeInsets.all(24),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Text("Login",

                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),

            const SizedBox(height: 8),

            const Text("Sign in to Quotely-hardy"),

            const SizedBox(height: 4),

            const Text("motivate, reflect and inspire"),

            const SizedBox(height: 30),

            TextField(decoration: const InputDecoration(labelText: "Username")),

            TextField(

              decoration: const InputDecoration(labelText: "Password"),

              obscureText: true,

            ),

            Align(

              alignment: Alignment.centerRight,

              child: TextButton(

                onPressed: () {},

                child: const Text("Forgot your password?"),

              ),

            ),

            ElevatedButton(

              onPressed: () {

                Navigator.pushReplacement(

  context,

  MaterialPageRoute(builder: (_) => const MainNavigation()),

);

              },

              child: const Text("Sign In"),

            ),

            const SizedBox(height: 16),

            const Text("--- Or continue with ---"),

            Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                IconButton(icon: const Icon(Icons.g_mobiledata), onPressed: () {}),

                IconButton(icon: const Icon(Icons.facebook), onPressed: () {}),

                IconButton(icon: const Icon(Icons.travel_explore), onPressed: () {}),

              ],

            )

          ],

        ),

      ),

    );

  }

}