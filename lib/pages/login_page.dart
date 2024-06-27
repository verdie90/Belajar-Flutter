import 'package:belajar/components/teksfield_ku.dart';
import 'package:belajar/components/tombol_ku.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final void Function () onTap;

   const Login({super.key, required this.onTap});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Icon(
              Icons.lock_person_sharp, 
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            
            Text(
              'Arsy Auto Motor',
              style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).colorScheme.inversePrimary
              ),
            ),
            const SizedBox(height: 10),

             Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Theme.of(context).colorScheme.inversePrimary
              ),
            ),
            const SizedBox(height: 10),

            // Teksfield Email
            TeksfieldKu(
              controller: emailController, 
              hintText: 'Email', 
              obscureText: false,
            ),
            const SizedBox(height: 10),

            // Teksfield Password
            TeksfieldKu(
              controller: passwordController, 
              hintText: 'Password', 
              obscureText: true
            ),
            const SizedBox(height: 10),

            // Tombol Login
            TombolKu(
              text: 'Login', 
              onTap: () {}
            ),
            const SizedBox(height: 25),

            // Tombol Register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum punya akun? ',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                  ),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Daftar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary
                    ),
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
