import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: AnaSayfa());
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  void initState() {
    super.initState();

    @override
    void initState() {
      super.initState();
    }

    SystemChrome.setSystemUIOverlayStyle(
      // ignore: prefer_const_constructors
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // şeffaf bildirim çubuğu rengi
        statusBarIconBrightness:
            Brightness.dark, // simgelerin rengi (karanlık veya açık)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/martin.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
              top: 80,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(133, 255, 68, 0),
                  borderRadius: BorderRadius.circular(5),
                ),
                // ignore: sort_child_properties_last
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hoş Geldin..",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width / 2 + 100,
              )),
          Positioned(
            bottom: 100,
            child: Container(
              child: SizedBox(
                // ignore: sort_child_properties_last
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Hero(
                    tag: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const GirisYap()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 5,
                            ),
                          ],
                          border: Border.all(
                            color: Colors.white.withOpacity(0.8),
                            width: 3,
                          ),
                          color: Colors.white.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(20),
                        ),

                        // ignore: prefer_const_constructors
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 15, bottom: 15),
                          child: const Text(
                            "GİRİŞ YAP",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const KayitOl()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 5,
                          ),
                        ],
                        border: Border.all(
                          color: Colors.white.withOpacity(0.8),
                          width: 3,
                        ),
                        color: Colors.white.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      // ignore: prefer_const_constructors
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 15, bottom: 15),
                        child: const Text(
                          "KAYIT OL",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ]),

                height: 100,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class GirisYap extends StatefulWidget {
  const GirisYap({super.key});

  @override
  State<GirisYap> createState() => _GirisYapState();
}

class _GirisYapState extends State<GirisYap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
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
                          decoration: InputDecoration(
                            hintText: 'Email',
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.white, width: 2.0),
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
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Sifre',
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.white, width: 2.0),
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
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "şifremi unuttum.",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                              ),
                            )
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(200, 25),
                              backgroundColor: Colors.yellow.withOpacity(0.9),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 5.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            onPressed: () {
                              if ("mailDogruSifreDogruVeMailOnaylandıysa" ==
                                  "mailDogruSifreDogruVeMailOnaylandıysa") {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Kesfet()));
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title:
                                          const Text("Hatalı Giriş Yaptınız"),
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
                            },
                            child: const Text(
                              "Giriş",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("veya",
                            style:
                                TextStyle(fontSize: 15, color: Colors.white)),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(MediaQuery.of(context).size.width, 40),
                              backgroundColor: Colors.white.withOpacity(0.8),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 5.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(
                                  MdiIcons.google,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Google ile Giriş",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                                Icon(
                                  Icons.phone,
                                  color: Colors.transparent,
                                ),
                              ],
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(MediaQuery.of(context).size.width, 40),
                              backgroundColor: Colors.white.withOpacity(0.8),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 5.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Telefon ile Giriş",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
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
    ));
  }
}

class KayitOl extends StatefulWidget {
  const KayitOl({super.key});

  @override
  State<KayitOl> createState() => _KayitOlState();
}

class _KayitOlState extends State<KayitOl> {
  @override
  void initState() {
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();

  final _formKey2 = GlobalKey<FormState>();

  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/conner.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 2 - 170,
              child: Hero(
                tag: 1,
                child: Container(
                  color: Colors.red.withOpacity(0.7),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Hesap Oluştur",
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
                    key: _formKey,
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'E-posta',
                            hintText: 'example@example.com',
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.white, width: 2.0),
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
                            if (value!.isEmpty || !value.contains('@')) {
                              return 'Lütfen geçerli bir e-posta adresi girin';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _email = value!;
                          },
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Şifre',
                            hintText: '******',
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.white, width: 2.0),
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
                            if (value!.isEmpty || value.length < 6) {
                              return 'Lütfen en az 6 karakterden oluşan bir şifre girin';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _password = value!;
                          },
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(200, 25),
                              backgroundColor: Colors.red.withOpacity(0.85),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 5.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                print(_email);
                                print(_password);
                                createUserEmailAndPassword();
                              }
                            },
                            child: const Text(
                              "Kayıt",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("veya",
                            style:
                                TextStyle(fontSize: 15, color: Colors.white)),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(MediaQuery.of(context).size.width, 40),
                              backgroundColor: Colors.white.withOpacity(0.8),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 5.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            onPressed: () {
                              googleIleGiris();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(
                                  MdiIcons.google,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Google ile Kayıt Ol",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                                Icon(
                                  Icons.phone,
                                  color: Colors.transparent,
                                ),
                              ],
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(MediaQuery.of(context).size.width, 40),
                              backgroundColor: Colors.white.withOpacity(0.8),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 5.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            onPressed: () {
                              String phoneNumber = '';
                              String verificationCode = '';

                              showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(35),
                                            topRight: Radius.circular(35)),
                                        color: Colors.black.withOpacity(0.8)),
                                    padding: const EdgeInsets.all(26.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Form(
                                          key: _formKey2,
                                          child: TextFormField(
                                            style: const TextStyle(fontSize: 17.0),
                                            keyboardType: TextInputType.phone,
                                            maxLength: 11,
                                            decoration: InputDecoration(
                                              labelText:
                                                  'Telefon Numaranızı Giriniz',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.grey,
                                                    width: 2.0),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.blue,
                                                    width: 2.0),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              fillColor:
                                                  Colors.white.withOpacity(0.8),
                                              filled: true,
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty ||
                                                  value.length < 11) {
                                                return 'Lütfen 11haneli bir telefon numarası girin';
                                              }
                                              return null;
                                            },
                                            onChanged: ((value) {
                                              phoneNumber = value;
                                            }),
                                            onSaved: (value) {
                                              setState(() {
                                                phoneNumber = value!;
                                              });
                                            },
                                          ),
                                        ),
                                        const SizedBox(height: 8.0),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: Size(
                                                MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                40),
                                            backgroundColor:
                                                Colors.white.withOpacity(0.8),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0,
                                                vertical: 5.0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          onPressed: () {
                                            if (_formKey2.currentState!
                                                .validate()) {
                                              _sendVerificationCode();
                                              Navigator.pop(context);
                                              showModalBottomSheet(
                                                backgroundColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        35),
                                                                topRight: Radius
                                                                    .circular(
                                                                        35)),
                                                        color: Colors.black
                                                            .withOpacity(0.8)),
                                                    padding:
                                                        const EdgeInsets.all(26.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          // ignore: sort_child_properties_last
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                'Tel : $phoneNumber',
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    color: Colors
                                                                        .green),
                                                              ),
                                                            ],
                                                          ),
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          height: 55,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                width: 2,
                                                                color: Colors
                                                                    .green),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            color: Colors.white
                                                                .withOpacity(
                                                                    0.8),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 4,
                                                        ),
                                                        TextField(
                                                          style:
                                                              const TextStyle(
                                                                  fontSize:
                                                                      17.0),
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          maxLength: 6,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                'Kodu Giriniz',
                                                            hintText: '******',
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  const BorderSide(
                                                                      color: Colors
                                                                          .grey,
                                                                      width:
                                                                          2.0),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  const BorderSide(
                                                                      color: Colors
                                                                          .blue,
                                                                      width:
                                                                          2.0),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                            fillColor: Colors
                                                                .white
                                                                .withOpacity(
                                                                    0.8),
                                                            filled: true,
                                                          ),
                                                          onChanged: (value) {
                                                            setState(() {
                                                              verificationCode =
                                                                  value;
                                                            });
                                                          },
                                                        ),
                                                        const SizedBox(
                                                            height: 8.0),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            _verifyPhoneNumber();
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: const Text(
                                                              'Onayla'),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            }
                                          },
                                          child: const Text(
                                            'Gönder',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Telefon ile Kayıt Ol",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
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
                color: Colors.red,
                height: 5,
                width: MediaQuery.of(context).size.width / 2,
              )),
          Positioned(
              bottom: 50,
              right: 0,
              child: Container(
                color: Colors.red,
                height: 5,
                width: MediaQuery.of(context).size.width / 2 - 60,
              ))
        ],
      ),
    ));
  }

  void createUserEmailAndPassword() async {
    
  }

  void googleIleGiris() async {
    
  }

  void _sendVerificationCode() {
    // Burada telefon numarasına onay kodu gönderilmesi işlemleri gerçekleştirilir
  }

  void _verifyPhoneNumber() {
    // Burada telefon numarasının onaylanması ve veritabanına kaydedilmesi işlemleri gerçekleştirilir
  }
}

class Kesfet extends StatefulWidget {
  const Kesfet({super.key});

  @override
  State<Kesfet> createState() => _KesfetState();
}

class _KesfetState extends State<Kesfet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("cıkıs yap"))),
          Center(
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("kullanıcıyı sil"))),
        ],
      ),
    );
  }
}
