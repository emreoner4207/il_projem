import 'package:emreoner_793301005/Temizlik.dart';
import 'package:emreoner_793301005/ambalaj.dart';
import 'package:emreoner_793301005/g%C4%B1da.dart';
import 'package:flutter/material.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ürünler"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> Temizlik()));
              },
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  child: Image.asset("resimler/temizlik.jpg"),
                ),
              ),
            ),

                GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> Ambalaj()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      child: Image.asset("resimler/ambalaj.jpg"),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> Gida()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      child: Image.asset("resimler/gıda.jpg"),
                    ),
                  ),
                ),





              ],
            ),
          ),
        )

    );
  }
}



