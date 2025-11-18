import 'package:flutter/material.dart';

class AppbarIcon extends StatelessWidget {
  const AppbarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
         width: 40,
        height: 40,
        decoration:BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle
         ),
       ) ;
  }
}