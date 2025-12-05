import 'package:flutter/material.dart';
import 'package:selicing_ui5/component/bariscari.dart';
import 'package:selicing_ui5/component/card.dart';
import 'package:selicing_ui5/decoration/set.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});
  @override
  Widget build(BuildContext context) {
    final double tinggi = MediaQuery.of(context).size.height;
    final double lebar = MediaQuery.of(context).size.width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: lebar,
          height: tinggi * 0.4,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [ClassName.colors1, ClassName.colors5],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Alamat Kirim", style: ClassName.style6),
              Row(
                spacing: 3,
                children: [
                  Text("Pondok", style: ClassName.style1),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ClassName.colors5,
                    ),
                    child: Text("utama", style: TextStyle(fontSize: 8)),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: ClassName.colors5,
                      size: 18,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chat_bubble_rounded,
                      color: ClassName.colors5,
                      size: 18,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: ClassName.colors5,
                      size: 18,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_bag,
                      color: ClassName.colors5,
                      size: 18,
                    ),
                  ),
                ],
              ),
              Text(
                "Perumahan Eco Village, Serpong Mekar sa...",
                style: ClassName.style5,
              ),
              Bariscari(),
            ],
          ),
        ),
        Positioned(
          top: 160,
          left: 20,
          right: 20,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: ClassName.colors5),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  offset: Offset(1, 2),
                  color: Colors.grey,
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ClassName.colors2, ClassName.colors5],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("hi David", style: ClassName.style2),
                      Text("Newbie Member", style: ClassName.style2),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ClassName.colors5,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsetsGeometry.all(10),
                      child: Card01(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
