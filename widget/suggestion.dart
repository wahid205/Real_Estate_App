import 'package:application/models/item_model.dart';
import 'package:application/widget/house_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../view/details.dart';

class suggestlist extends StatefulWidget {
   suggestlist({super.key,required this.Items, required this.title});
  String? title;
  List<items> Items;
  @override
  State<suggestlist> createState() => _suggestlistState();
}

class _suggestlistState extends State<suggestlist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(children: [
          Text(widget.title!,style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),
          TextButton(onPressed: (){}, child: Text('See All'))
        ],),
        SizedBox(height: 15,),
        Container(child: ListView.builder(itemBuilder: (context, index) => housecard(item: widget.Items[index], onTap: () {
          Navigator.push(context,
                    MaterialPageRoute(builder: (context) => details(widget.Items[index])));
        }),itemCount: widget.Items.length,),)
      ]),
    );
  }
}
