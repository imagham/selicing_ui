import 'package:flutter/material.dart';
import 'package:selicing_ui5/decoration/set.dart';

class Bariscari extends StatelessWidget {
  const Bariscari({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        spacing: 15,
        children: [
          Expanded(child: 
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: ClassName.colors5,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              constraints: BoxConstraints(maxHeight: 35),
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.all(0),
              hintText: "Vitamin untuk anak",hintStyle: TextStyle(color: Colors.grey)
            ),
            
           )
          ),
          Container(
            height: 35,
            width: 35,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(100),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: ClassName.colors5,width: 0.5)
            ),
            child: Image.asset("assets/card-scan 1.png"),
          ),
           Container(
            height: 35,
            width: 35,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(100),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: ClassName.colors5,width: 0.5)
            ),
            child: Image.asset("assets/favorite 1.png"),
          )
        ],
      ),
    
    );
  }
}
