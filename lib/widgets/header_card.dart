//
import 'package:craf_my_plate/colors.dart';
import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {

  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375, // Set the width of the card
      height: 175, // Set the height of the card
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), // Rounded corners
            gradient: LinearGradient(
              colors: TColor.headerCard, // Gradient colors
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Enjoy your first\norder, the taste of\nour delicious food!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.yellow,
                        style: BorderStyle.solid,
                        width: 1
                      ),
                    ),

                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 32),
                    child: Text(
                      'FIRSTPLATE01',
                      style: TextStyle(
                        color: Colors.yellow, // Replace with your desired text color
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              Image.asset("images/layer.png"),
            ],
          ),
        ),
      ),
    );
  }
}
