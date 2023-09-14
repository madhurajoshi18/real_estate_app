import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/transaction/transaction_review_empty.dart';

class TransactionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 327,
            height: 40,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '2',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.54,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'transactions',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 18,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.54,
                      ),
                    ),
                    SizedBox(width: 140),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.grid_view_rounded),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => TransactionReviewEmpty());
                    },
                    child: Container(
                      width: 160,
                      height: 230,
                      padding: const EdgeInsets.only(
                          top: 8, left: 8, right: 8, bottom: 16),
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F4F7),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 150,
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://picsum.photos/200/300"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 125,
                                right: 6,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8BC83F),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 8,
                                right: 8,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF242B5C),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    'Rent',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.36,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Wings Tower',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 12,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700,
                              height: 1.8,
                              letterSpacing: 0.36,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 4),
                              Text(
                                'Novemeber 21, 2021',
                                style: TextStyle(
                                  color: Color(0xFF53577A),
                                  fontSize: 8,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Get.to(() => TransactionReviewEmpty());
                },
                child: Container(
                  width: 160,
                  height: 250,
                  padding: const EdgeInsets.only(
                      top: 8, left: 8, right: 8, bottom: 16),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F4F7),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://picsum.photos/200/300"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 125,
                            right: 6,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              decoration: BoxDecoration(
                                color: Color(0xFF8BC83F),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            right: 8,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              decoration: BoxDecoration(
                                color: Color(0xFF242B5C),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                'Rent',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Bridgeland Modern \nHouse',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          height: 1.8,
                          letterSpacing: 0.36,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 4),
                          Text(
                            'December 17, 2021',
                            style: TextStyle(
                              color: Color(0xFF53577A),
                              fontSize: 8,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
