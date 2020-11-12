import 'package:flutter/material.dart';

class PageOneMastr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Container(
                margin: EdgeInsets.all(30),
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                    "لاقيت حاجة",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
              ),
              onPressed: () {
                print("l2 ya 3am shokran ");
              },
            ),
            //

            FlatButton(
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                      "ضايع منك حاجة ؟",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
              ),
              onPressed: () {
                print("tama kada ");
              },
            ),

            //
          ],
        ),
      ),
    );
  }
}
