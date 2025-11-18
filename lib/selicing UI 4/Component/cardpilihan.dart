import 'package:flutter/material.dart';
import 'package:selicing_ui/selicing%20UI%204/Component/colors.dart';

class Cardpilihan extends StatelessWidget {
  final Image pilihan;
  final String namap;
  const Cardpilihan({super.key, required this.pilihan,required this.namap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.ivoryMist,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
            
            
          ),
          child:Padding(
            padding: const EdgeInsets.all(8),
            child: Image(image:pilihan.image,fit: BoxFit.contain,),
          ) ,
        ),
        Padding(padding: const EdgeInsets.all(5), child: Text(namap,style: TextStyle(fontWeight: FontWeight.bold  ),)),
      ],
    );
  }
}
