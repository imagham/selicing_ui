import 'package:flutter/material.dart';
import 'package:selicing_ui/selicing%20UI%204/Component/colors.dart';

class Card1super extends StatelessWidget {
  const Card1super({super.key ,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 225,
      decoration: BoxDecoration(
        color: AppColors.mutedSage,
        borderRadius: BorderRadius.circular(10),
      ),

    );
  }
}
