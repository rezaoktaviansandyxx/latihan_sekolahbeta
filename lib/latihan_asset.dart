import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LatihanAssets extends StatelessWidget {
  const LatihanAssets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/classroom of elite.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(30.0))),
            child: Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, Ayanokouji Kiyotaka',
                    style: GoogleFonts.ubuntu(
                      textStyle:
                          const TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/ayanokouji.jpg'),
                    minRadius: 30,
                    maxRadius: 50,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Hallo Button'),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        textStyle: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      child: Text(
                        'Halo Button',
                        style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('DUARRRRRRRRRRRR'),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        textStyle: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      child: Text(
                        'Pencet saya',
                        style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Pesan Text Sekarang'),
                        ));
                      },
                      icon: const Icon(Icons.abc),
                      label: Text(
                        "Pesan Text Sekarang",
                        style: GoogleFonts.ubuntu(
                          textStyle: const TextStyle(
                              fontSize: 22, color: Colors.white),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                          shadowColor: Colors.transparent,
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 40.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0))),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
