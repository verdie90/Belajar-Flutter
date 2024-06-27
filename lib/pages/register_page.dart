import 'package:belajar/components/teksfield_ku.dart';
import 'package:belajar/components/tombol_ku.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {

  final void Function () onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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
              'Daftar',
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

            TeksfieldKu(
              controller: confirmPasswordController, 
              hintText: 'Konfirmasi Password', 
              obscureText: false
            ),
            const SizedBox(height: 10),

            // Tombol Daftar
            TombolKu(
              text: 'Daftar', 
              onTap: () {}
            ),
            const SizedBox(height: 25),

            // Tombol Login
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya akun? ',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                  ),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Login',
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