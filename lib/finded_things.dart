import 'package:flutter/material.dart';
import 'page_two.dart';
class Finded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("images/ball.png"),
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 3)),
            child: Icon(
              Icons.phone,
              size: 50,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
