import 'package:emreoner_793301005/Hakkimizda.dart';
import 'package:emreoner_793301005/SayfaA.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Anasayfa(title: 'Sermina Gıda'),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("resimler/download.jpg",
            width:400,

          ),
          ElevatedButton(

            child: Text("Ürünlerimiz"),

            onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder: (context)=> SayfaA()));
            },
            style: ElevatedButton.styleFrom(
              primary:Colors.red,

            ),

          ),

          ElevatedButton(

            child: Text("Hakkımızda"),

            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> Hakkimizda()));
            },
            style: ElevatedButton.styleFrom(
              primary:Colors.red,


            ),

          ),





        ],
      )

    );
  }
}
