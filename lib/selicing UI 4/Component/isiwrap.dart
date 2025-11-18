import 'package:flutter/material.dart';
import 'package:selicing_ui/selicing%20UI%204/Component/colors.dart';

class Isiwrap extends StatelessWidget {
  final Icon isiicon;
  final String namai;
  const Isiwrap({super.key, required this.isiicon, required this.namai});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: AppColors.peachBlush,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(isiicon.icon),
        ),
        SizedBox(height: 5,),
        Text(namai)
      ],
    );
  }
}
