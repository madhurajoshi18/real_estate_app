import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/favorites/favorites_horizontal.dart';
import 'package:real_estate_app/widgets/nearby_estates.dart';

class FavoritesVertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 40,
            height: 40,
            decoration: ShapeDecoration(
              color: Color(0xFFF5F4F7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Center(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF234F68),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                iconSize: 20,
              ),
            ),
          ),
        ),
        title: Text(
          "My Favorite",
          style: TextStyle(
            color: Color(0xFF242B5C),
            fontSize: 14,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.delete_outline_outlined, color: Color(0xFF242B5C)),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 400,
              height: 50,
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 5),
                  Text(
                    '0',
                    style: TextStyle(
                      color: Color(0xFF234F68),
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.54,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'estates',
                    style: TextStyle(
                      color: Color(0xFF242B5C),
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.54,
                    ),
                  ),
                  SizedBox(width: 210),
                  IconButton(
                    onPressed: () {
                      Get.to(() => FavoritesHorizontal());
                    },
                    icon: Icon(
                      Icons.grid_view_rounded,
                      color: Color(0xFF242B5C),
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
                  name: "Bungalow House",
                  rating: "4.7",
                  location: "Jakarta, Indonesia",
                  rent: "\$ 235/month",
                ),
                SizedBox(width: 10),
                NearbyEstates(
                  imageUri: "https://picsum.photos/200/300",
                  name: "Bridgeland Modern House",
                  rating: "4.9",
                  location: "Semarang, Indonesia",
                  rent: "\$ 260/month",
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NearbyEstates(
                  imageUri: "https://picsum.photos/200/300",
                  name: "Mill Per House",
                  rating: "4.8",
                  location: "Jakarta, Indonesia",
                  rent: "\$ 271/month",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
