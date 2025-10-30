import 'package:flutter/material.dart';
import 'package:selicing_ui/component/bannerinfo.dart';
import 'package:selicing_ui/component/komponentUi1.dart';
import 'package:selicing_ui/component/menuapp.dart';
import 'package:selicing_ui/component/saldoapp.dart';
import 'package:selicing_ui/component/bannerinfo.dart';
class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topCenter,
                  end: AlignmentDirectional.bottomCenter,
                  colors: [Colors.pinkAccent, Colors.white],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 20,
                    children: [
                      SizedBox(
                        width: 350,
                        child: Expanded(child:TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 230, 229, 229),
                            hintText: 'Mau makan apa hari ini?',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ), ) 
                      ),
                      CircleAvatar(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 30,
                    children: [
                      Text(
                        "Menu favorit anda",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 180,
                        width:180,
                        child: Image.asset('fastfood.png'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 20,
                    children: [
                      KomponenUi1(
                        logo: 'assets/burger.png',
                        text: 'Promo trus',
                      ),
                      KomponenUi1(
                        logo: 'assets/store.png', text: 'Restoran'
                      ),
                      KomponenUi1(
                        logo: 'assets/orange-juice.png',
                        text: 'Minuman',
                      ),
                      KomponenUi1(
                        logo: 'assets/vegetables.png',
                        text: 'Buah & Sayur',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Saldoapp(),
            SizedBox(
              height: 30,
            ),
            Column(
              spacing: 15,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Menuapp(),
                    Menuapp(),
                    Menuapp(),
                    Menuapp(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Menuapp(),
                    Menuapp(),
                    Menuapp(),
                    Menuapp(),

                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Promo hari ini!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 170,
              width: double.infinity,
              child: PageView(
                children: [
                  Bannerinfo(banner: "banner2.png"),
                ],
              ),
            ),
            
            BottomAppBar(
           child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: SizedBox(height: 30, child: Image.asset("assets/home.png")),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset("promo.png"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(height: 30, child: Image.asset("assets/chat.png")),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset("assets/shopping-bag.png"),
              ),
            ),
          ],
        ),)
          ],
        ),
        
      ),
    );
  }
}