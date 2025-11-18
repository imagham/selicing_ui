import 'package:flutter/material.dart';
import 'package:selicing_ui/selicing%20UI%204/Component/colors.dart';

class Cardpromo extends StatelessWidget {
  const Cardpromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 160,
          width: 130,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.deepForest, width: 1.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Container(
          height: 25,
          width: 65,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(topRight:Radius.circular(15),bottomRight: Radius.circular(15))
          ),
          child: Text("lorem",textAlign: TextAlign.center,),
        )
      ],
    );
  }
}
