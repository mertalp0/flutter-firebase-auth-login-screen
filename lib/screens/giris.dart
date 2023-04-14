import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_screen/main.dart';
import 'package:flutter_login_screen/screens/anasayfa.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GirisYap extends StatefulWidget {
  const GirisYap({super.key});

  @override
  State<GirisYap> createState() => _GirisYapState();
}

class _GirisYapState extends State<GirisYap> {
  late FirebaseAuth auth;
  TextEditingController _email = TextEditingController();
  TextEditingController _sifre = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    auth = FirebaseAuth.instance;
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/yelizarov.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height / 2 - 170,
                      child: Hero(
                        tag: 1,
                        child: Container(
                          color: Colors.yellow.withOpacity(0.7),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Giriş Yap",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35),
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                      bottom: 40,
                      left: 10,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 5,
                            ),
                          ],
                          color: Colors.black.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        height: MediaQuery.of(context).size.height / 2 + 60,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Form(
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                TextField(
                                  controller: _email,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.blue, width: 2.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    fillColor: Colors.white.withOpacity(0.8),
                                    filled: true,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                TextField(
                                  controller: _sifre,
                                  decoration: InputDecoration(
                                    hintText: 'Sifre',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.blue, width: 2.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    fillColor: Colors.white.withOpacity(0.8),
                                    filled: true,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        resetpage();
                                      },
                                      child: Text(
                                        "şifremi unuttum.",
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.7),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(200, 25),
                                      backgroundColor:
                                          Colors.yellow.withOpacity(0.9),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 5.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () async {
                                      var giris = signInWithEmailAndPassword(
                                          _email.text, _sifre.text);
                                    },
                                    child: const Text(
                                      "Giriş",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("veya",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white)),
                                const SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(
                                          MediaQuery.of(context).size.width,
                                          40),
                                      backgroundColor:
                                          Colors.white.withOpacity(0.8),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 5.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () async {
                                      var a = await googleIleGiris();
                                      if (a != null) {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AnaSayfa()));
                                      }
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Icon(
                                          MdiIcons.google,
                                          color: Colors.black,
                                        ),
                                        Text(
                                          "Google ile Giriş Yap",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                        Icon(
                                          Icons.phone,
                                          color: Colors.transparent,
                                        ),
                                      ],
                                    )),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(
                                          MediaQuery.of(context).size.width,
                                          40),
                                      backgroundColor:
                                          Colors.white.withOpacity(0.8),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0, vertical: 5.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Icon(
                                          Icons.phone,
                                          color: Colors.black,
                                        ),
                                        Text(
                                          "Telefon ile Giriş",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                        Icon(
                                          Icons.phone,
                                          color: Colors.transparent,
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                      bottom: 65,
                      right: 0,
                      child: Container(
                        color: Colors.yellow,
                        height: 5,
                        width: MediaQuery.of(context).size.width / 2,
                      )),
                  Positioned(
                      bottom: 50,
                      right: 0,
                      child: Container(
                        color: Colors.yellow,
                        height: 5,
                        width: MediaQuery.of(context).size.width / 2 - 60,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<String?> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;
      if (user!.emailVerified) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const AnaSayfa()));

        // showdialog("Giriş Başarılı");
      } else {
        showdialog("Lütfen önce e-posta adresinizi doğrulayın.");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showdialog("Bu e-posta adresine sahip bir hesap bulunmamaktadır.");
      } else if (e.code == 'wrong-password') {
        showdialog("sifre hatalı");
      } else {
        return e.message;
      }
    } catch (e) {
      showdialog("beklenmedik bir oluştu.");
      return e.toString();
    }
  }

  showdialog(String metin) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(metin),
          actions: <Widget>[
            TextButton(
              child: const Text("Kapat"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<UserCredential> googleIleGiris() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  void resetpage() {
    String email = '';

    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
        return Container(
          margin: EdgeInsets.only(bottom: keyboardHeight),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              color: Colors.black.withOpacity(0.8)),
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Form(
                key: _formKey,
                child: TextFormField(
                  style: const TextStyle(fontSize: 17.0),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Mail Adresinizi Giriniz',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.white.withOpacity(0.8),
                    filled: true,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Lütfen Mail Giriniz';
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return 'Geçerli Bir Mail Giriniz';
                    }
                    return null;
                  },
                  onChanged: ((value) {
                    email = value;
                  }),
                  onSaved: (value) {
                    setState(() {
                      email = value!;
                    });
                  },
                ),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width, 40),
                  backgroundColor: Colors.white.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 5.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final methods = await FirebaseAuth.instance
                        .fetchSignInMethodsForEmail(email);

                    if (methods.isEmpty) {
                      showdialog("Mail Adresi Kayıtlı Değil");
                    } else {
                      await FirebaseAuth.instance
                          .sendPasswordResetEmail(email: email);
                      showdialog(
                          "Şifre Sıfırlama Bağlantısı Mailinize Gönderildi.");
                    }
                  }
                },
                child: const Text(
                  'Gönder',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
