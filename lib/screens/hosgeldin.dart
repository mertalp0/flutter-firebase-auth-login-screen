
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'giris.dart';
import 'kayit.dart';

class Hosgeldin extends StatefulWidget {
  const Hosgeldin({super.key});

  @override
  State<Hosgeldin> createState() => _HosgeldinState();
}

class _HosgeldinState extends State<Hosgeldin> {
  @override
  void initState() {
    super.initState();

    
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
          )
        ]),
      ),
    );
  }
}


