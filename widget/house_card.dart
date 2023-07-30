import 'package:application/models/item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class housecard extends StatefulWidget {
  housecard({super.key, required this.item, required this.onTap});
  items item;
  Function()? onTap;
  @override
  State<housecard> createState() => _housecardState();
}

class _housecardState extends State<housecard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.grey)),
        child: InkWell(
          onTap: widget.onTap,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: Colors.grey),
                        image: DecorationImage(
                            image: NetworkImage(
                              widget.item.thumb_uri!,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.item.category!,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.item.category!,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    Text(
                      widget.item.location!,
                      style: TextStyle(color: Colors.blueGrey),
                    )
                  ]),
                  Row(
                    children: [Text("${widget.item.price} / pound",style: TextStyle(fontSize: 20),),
                    IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                    ],
                  )
                ]),
          ),
        ));
  }
}
