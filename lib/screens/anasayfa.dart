import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  User user = FirebaseAuth.instance.currentUser!;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  void initState() {
    print(user);

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("kullanıcı : ${user.email}"),
            ElevatedButton(
                onPressed: () {
                  signOut();
                },
                child: const Text("cıkıs yap")),
            ElevatedButton(
                onPressed: () async {
                  if (user != null) {
                    try {
                      user.delete().then((value) {
                        // Oturum açma bilgilerini de silmek için:
                        FirebaseAuth.instance.signOut();
                        _googleSignIn.disconnect();
                        Navigator.of(context).pop();
                      });

                      // Kullanıcı başarıyla silindi
                    } catch (e) {
                      // Kullanıcı silinemedi
                    }
                  }
                },
                child: const Text("kullanıcıyı sil")),
          ],
        ),
      ),
    );
  }

  Future<void> signOut() async {
    if (FirebaseAuth.instance.currentUser != null) {
      var providerData = FirebaseAuth.instance.currentUser!.providerData;
      if (providerData.any((element) => element.providerId == 'google.com')) {
        // Kullanıcı Google hesabı ile giriş yaptı
        await _googleSignIn.disconnect();
        Navigator.of(context).pop();
      } else if (providerData
          .any((element) => element.providerId == 'password')) {
        // Kullanıcı e-posta ve şifre ile giriş yaptı
        await FirebaseAuth.instance.signOut();
        Navigator.of(context).pop();
      }
    }
  }
}
