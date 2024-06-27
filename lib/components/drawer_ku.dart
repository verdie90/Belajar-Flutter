import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //logo aplikasi
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(Icons.moped_outlined, size: 80, color: Theme.of(context).colorScheme.inversePrimary),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              color: Theme.of(context).colorScheme.inversePrimary,
              thickness: 1,
            ),
          ),
          //menu aplikasi
          //pengaturan aplikasi
          //keluar aplikasi
        ],
      )
    );
  }
}