import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/account%20setup/user_empty.dart';
import 'package:real_estate_app/featured%20list/feature_estates.dart';
import 'package:real_estate_app/featured%20list/top_agents.dart';
import 'package:real_estate_app/featured%20list/top_locations_category.dart';
import 'package:real_estate_app/home/promotion.dart';
import 'package:real_estate_app/location/location_empty.dart';
import 'package:real_estate_app/notification/notification_list.dart';
import 'package:real_estate_app/widgets/avatar_name.dart';
import 'package:real_estate_app/widgets/custom_property_card.dart';
import 'package:real_estate_app/widgets/nearby_estates.dart';
import 'package:real_estate_app/widgets/top_locations.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: -100,
              child: Opacity(
                opacity: 0.20,
                child: Container(
                  width: 362,
                  height: 356,
                  decoration: ShapeDecoration(
                    color: Color(0xFF234F68),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 60, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(height: 16),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => LocationEmpty());
                        },
                        child: Container(
                          width: 163,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.location_on,
                                  color: Color(0xFF242B5C),
                                ),
                              ),
                              const SizedBox(width: 2),
                              Text(
                                'Jakarta, Indonesia',
                                style: TextStyle(
                                  color: Color(0xFF242B5C),
                                  fontSize: 10,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.30,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down_sharp,
                                color: Color(0xFF242B5C),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 100),
                      Container(
                        width: 50,
                        height: 50,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.60, color: Color(0xFF8BC83F)),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: Container(
                                width: 20,
                                height: 20,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 3.12, vertical: 1.88),
                                child: IconButton(
                                  onPressed: () {
                                    Get.to(() => NotificationList());
                                  },
                                  icon: Icon(
                                    Icons.notifications_active,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        width: 50,
                        height: 50,
                        child: Stack(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.60, color: Color(0xFFDFDFDF)),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(() => UserEmpty());
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Image.asset("assets/user.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Hey, ',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 25,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              height: 1.4,
                              letterSpacing: 0.75,
                            ),
                          ),
                          TextSpan(
                            text: 'Jonathan! \n',
                            style: TextStyle(
                              color: Color(0xFF234F68),
                              fontSize: 25,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w800,
                              height: 1.4,
                              letterSpacing: 0.75,
                            ),
                          ),
                          TextSpan(
                            text: "Let's start exploring",
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 25,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              height: 1.4,
                              letterSpacing: 0.75,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: 327,
                      height: 70,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.black, size: 20),
                            SizedBox(width: 8.0),
                            Text(
                              'Search House, Apartment, etc.',
                              style: TextStyle(
                                color: Color(0xFFA1A4C1),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.36,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.mic, color: Colors.black, size: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF234F68),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'All',
                            style: TextStyle(
                              color: Color(0xFFF5F4F7),
                              fontSize: 10,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 70,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F4F7),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'House',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 10,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F4F7),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Apartment',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 10,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 70,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F4F7),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'House',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 10,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 10, right: 10),
                          height: 200,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image:
                                  NetworkImage("https://picsum.photos/200/300"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 70,
                                right: 20,
                                child: Text(
                                  'Halloween \nSale!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.54,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 130,
                                right: 20,
                                child: Text(
                                  'All discount up to 60%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  width: 93,
                                  height: 56,
                                  decoration: ShapeDecoration(
                                      color: Color(0xFF242B5C),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(25),
                                        ),
                                      )),
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(() => Promotion());
                                    },
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          height: 200,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image:
                                  NetworkImage("https://picsum.photos/200/300"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 70,
                                left: 20,
                                child: Text(
                                  'Summer \nVacation!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.54,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 130,
                                left: 20,
                                child: Text(
                                  'Up to 50% off',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  width: 93,
                                  height: 56,
                                  decoration: ShapeDecoration(
                                      color: Color(0xFF242B5C),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(25),
                                        ),
                                      )),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        width: 350,
                        height: 40,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Feature Estates',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 18,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.54,
                              ),
                            ),
                            SizedBox(width: 120),
                            TextButton(
                              onPressed: () {
                                Get.to(() => FeatureEstates());
                              },
                              child: Text(
                                'View All',
                                style: TextStyle(
                                  color: Color(0xFF234F68),
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomPropertyCard(
                          imageUri: "https://picsum.photos/200/300",
                          name: "Sky Dandelions \nApartment",
                          rating: "4.9",
                          location: "Jakarta, Indonesia",
                          rent: "\$290",
                          subRent: "/month",
                          bottomText: "Apartment",
                        ),
                        SizedBox(width: 10),
                        CustomPropertyCard(
                          imageUri: "https://picsum.photos/200/300",
                          name: "Sky Dandelions \nApartment",
                          rating: "4.8",
                          location: "Jakarta, Indonesia",
                          rent: "\$220",
                          subRent: "/month",
                          bottomText: "Villa",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        width: 350,
                        height: 40,
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Top Locations',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 18,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.54,
                              ),
                            ),
                            SizedBox(width: 130),
                            TextButton(
                              onPressed: () {
                                Get.to(() => TopLocationsCategory());
                              },
                              child: Text(
                                'explore',
                                style: TextStyle(
                                  color: Color(0xFF234F68),
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      TopLocations(
                        imageUrl: "https://picsum.photos/200/300",
                        name: "Bali",
                      ),
                      SizedBox(width: 10),
                      TopLocations(
                        imageUrl: "https://picsum.photos/200/300",
                        name: "Jakarta",
                      ),
                      SizedBox(width: 10),
                      TopLocations(
                        imageUrl: "https://picsum.photos/200/300",
                        name: "Yogyakarta",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        width: 350,
                        height: 40,
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Top Estate Agent',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 18,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.54,
                              ),
                            ),
                            SizedBox(width: 120),
                            TextButton(
                              onPressed: () {
                                Get.to(() => TopAgents());
                              },
                              child: Text(
                                'explore',
                                style: TextStyle(
                                  color: Color(0xFF234F68),
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AvatarName(
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU",
                          name: "Amanda",
                        ),
                        SizedBox(width: 10),
                        AvatarName(
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU",
                          name: "Anderson",
                        ),
                        SizedBox(width: 10),
                        AvatarName(
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU",
                          name: "Samantha",
                        ),
                        SizedBox(width: 10),
                        AvatarName(
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU",
                          name: "Andrew",
                        ),
                        SizedBox(width: 10),
                        AvatarName(
                          imageUrl:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU",
                          name: "Anand",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 350,
                    height: 25,
                    padding: const EdgeInsets.only(right: 127),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Explore Nearby Estates',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 18,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NearbyEstates(
                        imageUri: "https://picsum.photos/200/300",
                        name: "Wings Tower",
                        rating: "4.9",
                        location: "Jakarta, Indonesia",
                        rent: "\$ 220/month",
                      ),
                      SizedBox(width: 30),
                      NearbyEstates(
                        imageUri: "https://picsum.photos/200/300",
                        name: "Mill Per House",
                        rating: "4.8",
                        location: "Jakarta, Indonesia",
                        rent: "\$ 270/month",
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NearbyEstates(
                        imageUri: "https://picsum.photos/200/300",
                        name: "Bungalow House",
                        rating: "4.7",
                        location: "Jakarta, Indonesia",
                        rent: "\$ 235/month",
                      ),
                      SizedBox(width: 30),
                      NearbyEstates(
                        imageUri: "https://picsum.photos/200/300",
                        name: "Sky Dadelions Apartment",
                        rating: "4.8",
                        location: "Jakarta, Indonesia",
                        rent: "\$ 290/month",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
