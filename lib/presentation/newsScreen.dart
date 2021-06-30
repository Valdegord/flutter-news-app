import 'package:flutter/material.dart'; 


class NewsScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment
                .bottomLeft, // 10% of the width, so there are ten blinds.
            colors: <Color>[
              Color.fromRGBO(102, 102, 200, 1),
              Color.fromRGBO(0, 0, 205, 0.8),
            ], // red to yellow
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: Container()
      ),
    );
  
  }
}