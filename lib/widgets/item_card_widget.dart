import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 320,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.darkYellow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/burger.jpg",height: 140, width: 250,fit: BoxFit.cover,),
          const Padding(
            padding: EdgeInsets.fromLTRB(12,15,12,2),
            child: Text("Name",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.brown,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(12,0,12,4),
            child: Text("Burger",
              style: TextStyle(
                fontSize: 10,
                color: Colors.brown,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(12,15,12,2),
            child: Text("Price",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.brown,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(12,0,12,4),
            child: Text("1200.00",
              style: TextStyle(
                fontSize: 10,
                color: Colors.brown,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(12,15,12,2),
            child: Text("Rating",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.brown,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(12,0,12,4),
            child: Text("4",
              style: TextStyle(
                fontSize: 10,
                color: Colors.brown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
