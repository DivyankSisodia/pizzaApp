import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widget/widgets/rating.dart';
import '../constants/app_theme.dart';

class DetailsPage extends StatefulWidget {
  final String name;
  final String image;
  final String description;
  final double price;
  final String shortDescription;
  final String longDescription;

  const DetailsPage({
    Key? key,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.shortDescription,
    required this.longDescription,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool _showFullDescription = false;

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
                Icons.search,
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
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: secondaryColor,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          const Gap(10),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 20.0),
                    child: Container(
                      height: 140,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: textColor, width: 0.2),
                        color: secondaryColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.name,
                                  style: AppTheme.appBarBlackTitleDetail,
                                ),
                                Text(
                                  '\$${widget.price.toStringAsFixed(2)}',
                                  style: AppTheme.priceTextDetail,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 0.0),
                            child: Text(
                              widget.shortDescription,
                              style: AppTheme.smallText,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const RatingWidget(),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: secondaryColor,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        color: textColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  onPressed: () {
                                    debugPrint('Add to cart');
                                  },
                                  child: const Text(
                                    'Add to cart',
                                    style: AppTheme.smallBlackText,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Description',
                            style: AppTheme.appBarBlackTitle),
                        const Gap(10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showFullDescription = !_showFullDescription;
                            });
                          },
                          child: Text(
                            _showFullDescription
                                ? widget.longDescription
                                : '${widget.longDescription.substring(0, 150)}... Read more',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        debugPrint('Order now');
                      },
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: textColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            'Order now',
                            style: AppTheme.buttonthememedium,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
