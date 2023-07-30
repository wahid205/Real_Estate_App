import 'package:application/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class details extends StatefulWidget {
   details(this.item, {super.key});
  items item;
  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.redAccent),
        title: Text(widget.item.title!,style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: NetworkImage(widget.item.thumb_uri!),fit: BoxFit.cover)
            ),
          ),
          SizedBox(height: 10,),
          Text(widget.item.title!,style: TextStyle(color: Colors.redAccent.shade200,fontSize: 20,fontWeight: FontWeight.bold),),
          Text(widget.item.category!,style: TextStyle(color: Colors.redAccent.shade200,fontSize: 25,fontWeight: FontWeight.bold),),
        ],),
      ),
    );
  }
}