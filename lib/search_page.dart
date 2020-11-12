import 'package:flutter/material.dart';
import 'finded_things.dart';
class SearchPage extends StatelessWidget {
  TextStyle searchStyle = TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white,width: 3)
              ),
              child: Text("أختار نوع الحاجة",style: searchStyle,textAlign: TextAlign.center,),
            ),

            Finded(),
            Finded(),
          ],
        ),
      ),
    );
  }
}
