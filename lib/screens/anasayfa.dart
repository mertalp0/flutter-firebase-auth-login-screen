import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Future<void> signOut() async {
                      await FirebaseAuth.instance.signOut();
                      Navigator.of(context).pop();
                     
                    }
                  },
                  child: const Text("cıkıs yap"))),
          Center(
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("kullanıcıyı sil"))),
        ],
      ),
    );
  }
}
