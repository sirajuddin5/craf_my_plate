import 'package:craf_my_plate/widgets/crafting_card.dart';
import 'package:craf_my_plate/widgets/header_card.dart';
import 'package:craf_my_plate/widgets/meal_box_card.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class CMPAssignmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hi, Monica!",
          style: TextStyle(
              fontSize: 28, color: TColor.primary, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Current location",
                    style: TextStyle(fontSize: 15),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: TColor.primary,
                      ),
                      Text(
                        "Hydrabad",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 250,
              child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return GestureDetector(onTap: () {}, child: HeaderCard());
                }),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Start Crafting",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
            ),

            // CraftingCard(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: DeliveryBoxCard(
                title: 'Delivery Box',
                subtitle: 'Min 10 - Max 120',
                imagePath: 'images/clip.png',
                onSeeAllPressed: () {
                  // Handle See All action
                },
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: MealBoxCard(
                      title: "Meal Boxes",
                      subtitle: "Min 10 Guests",
                      imagePath: "images/img2.png",
                      onPressed: () {}),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: MealBoxCard(
                      title: "Meal Boxes",
                      subtitle: "Min 10 Guests",
                      imagePath: "images/img2.png",
                      onPressed: () {}),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
