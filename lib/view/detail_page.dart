import 'package:apppizza/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class DetailsPage extends StatelessWidget {
  final String name;
  final String image;
  final String description;
  final double price;
  final String shortDescription;

  const DetailsPage({
    Key? key,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.shortDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: IconButton(
              onPressed: () {
                debugPrint('Search');
              },
              icon: const Icon(
                Iconsax.shop,
                size: 25,
                color: textColor,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), // Rounded corners
                color: secondaryColor,
              ),
              child: ClipRRect(
                // ClipRRect to clip the image to rounded corners
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/images/9.jpeg',
                  fit: BoxFit.cover, // Ensure the image covers the entire space
                ),
              ),
            ),
          ),
          const Gap(20),
          Expanded(
            flex: 6,
            child: Container(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 20.0),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                name,
                                style: AppTheme.appBarBlackTitleDetail,
                              ),
                              Text(
                                '\$${price.toStringAsFixed(2)}',
                                style: AppTheme.priceTextDetail,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
                          child: Text(
                            shortDescription,
                            style: AppTheme.smallText,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}


// class DetailsPage extends StatelessWidget {
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(name),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Image.asset(image),
//           SizedBox(height: 16),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   name,
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Text(description),
//                 SizedBox(height: 16),
//                 Text(
//                   'Price: \$${price.toStringAsFixed(2)}',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
