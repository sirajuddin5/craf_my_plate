//
// //
// import 'package:craf_my_plate/colors.dart';
// import 'package:flutter/material.dart';
//
// class CraftingCard extends StatelessWidget {
//   const CraftingCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 375, // Set the width of the card
//       height: 175, // Set the height of the card
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         elevation: 5,
//         margin: EdgeInsets.all(10),
//         child: Container(
//           padding: EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10.0), // Rounded corners
//             gradient: LinearGradient(
//               colors: TColor.craftingCard, // Gradient colors
//               end: Alignment.center
//             ),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Text(
//                     "Enjoy your first\norder, the taste of\nour delicious food!",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(
//                           color: Colors.yellow,
//                           style: BorderStyle.solid,
//                           width: 1
//                       ),
//                     ),
//
//                     padding: EdgeInsets.symmetric(vertical: 15, horizontal: 32),
//                     child: Text(
//                       'FIRSTPLATE01',
//                       style: TextStyle(
//                         color: Colors.yellow, // Replace with your desired text color
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   )
//                 ],
//               ),
//               Image.asset("images/clip.png"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// import 'package:craf_my_plate/colors.dart';
// import 'package:flutter/material.dart';
//
// class DeliveryBoxCard extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final String imagePath;
//   final VoidCallback onSeeAllPressed;
//
//   DeliveryBoxCard({
//     required this.title,
//     required this.subtitle,
//     required this.imagePath,
//     required this.onSeeAllPressed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(colors: TColor.craftingCard),
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             spreadRadius: 2,
//             blurRadius: 5,
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           // Text Section
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Row(
//                   children: [
//                     Icon(Icons.person, color: Colors.brown),
//                     SizedBox(width: 4),
//                     Text(
//                       subtitle,
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.brown,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 16),
//                 ElevatedButton(
//                   onPressed: onSeeAllPressed,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.orange,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text(
//                         'See All',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       SizedBox(width: 8),
//                       Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(width: 16),
//           // Image Section
//           Image.asset(
//             imagePath,
//             height: 100,
//             width: 100,
//             fit: BoxFit.cover,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
import 'package:craf_my_plate/colors.dart';
import 'package:flutter/material.dart';

class DeliveryBoxCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final VoidCallback onSeeAllPressed;

  DeliveryBoxCard({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.onSeeAllPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: TColor.craftingCard),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Stack(
        children: [
          // Image Section
          Positioned(
            top: -7,
            left: 111,
            child: Image.asset(
              imagePath,
              height: 249.78,
              width: 458,
              fit: BoxFit.cover,
            ),
          ),
          // Text Section
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(height: 8),

                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.brown),
                        SizedBox(width: 4),
                        Text(
                          subtitle,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.brown,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16),

                    ElevatedButton(
                      onPressed: onSeeAllPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'See All',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
// import 'package:craf_my_plate/colors.dart';
// import 'package:flutter/material.dart';
//
// class DeliveryBoxCard extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final String imagePath;
//   final VoidCallback onSeeAllPressed;
//
//   DeliveryBoxCard({
//     required this.title,
//     required this.subtitle,
//     required this.imagePath,
//     required this.onSeeAllPressed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 458, // Set width of the card
//       height: 249.78, // Set height of the card
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             spreadRadius: 2,
//             blurRadius: 5,
//           ),
//         ],
//       ),
//       child: Stack(
//         children: [
//           // Image Section
//           Positioned.fill(
//             child: Image.asset(
//               imagePath,
//               fit: BoxFit.cover, // Ensure the image covers the entire area
//             ),
//           ),
//           // Text Section
//           Positioned(
//             top: -7,
//             left: 111,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Row(
//                   children: [
//                     Icon(Icons.person, color: Colors.white),
//                     SizedBox(width: 4),
//                     Text(
//                       subtitle,
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 16),
//                 ElevatedButton(
//                   onPressed: onSeeAllPressed,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.orange,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text(
//                         'See All',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       SizedBox(width: 8),
//                       Icon(
//                         Icons.arrow_forward,
//                         color: Colors.white,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
