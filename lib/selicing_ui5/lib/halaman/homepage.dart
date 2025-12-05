import 'package:flutter/material.dart';
import 'package:selicing_ui5/component/appbar.dart';
import 'package:selicing_ui5/component/flashshale.dart';
import 'package:selicing_ui5/component/iklanbanner.dart';
import 'package:selicing_ui5/component/menuapps.dart';
import 'package:selicing_ui5/decoration/set.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClassName.colors3,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Appbar(),
                   SizedBox(height: 50),
              //ini bagian iklan banner
              Iklanbanner(),
              SizedBox(height: 10),
              //ini bagian menu aplikasi
              Menuapps(),
              SizedBox(height: 10),
              //ini bagian flashsale
              Flashsale(),
            ],
          )
        ),
      ),
    bottomNavigationBar:   BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Profile",
        ),
      ],
    )
    );
  }
}