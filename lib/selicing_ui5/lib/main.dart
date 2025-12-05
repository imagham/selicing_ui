import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selicing_ui5/halaman/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:Homepage() ,
    );
  }
}

class Latihan extends StatelessWidget {
  const Latihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Latihan'),),
        backgroundColor: CupertinoColors.systemBrown,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        height: 300,
        width:double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.greenAccent
        ),
        child: Image.network("https://images.unsplash.com/photo-1507525428034-b723cf961d3e"),
      ),
    );
  }
}
