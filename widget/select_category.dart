import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class selectcategory extends StatefulWidget {
  const selectcategory({super.key});

  @override
  State<selectcategory> createState() => _selectcategoryState();
}

class _selectcategoryState extends State<selectcategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categorybutton(Icons.house_rounded,"House"),
          categorybutton(Icons.villa_rounded,"Villa"),
          categorybutton(Icons.apartment_rounded,"Apartment"),
          categorybutton(Icons.castle_rounded,"Castle"),
        ],
      ),
    );
  }

  Widget categorybutton(IconData icon, String? text) {
    return Container(
      margin: EdgeInsets.all(18),
      width: 80,
      height: 80,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: InkWell(onTap: (){},child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon,size: 32,color: Colors.blueAccent,),
          Text('$text',)
      ],)),
    );
  }
}
