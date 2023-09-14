import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/featured%20list/top_locations_detail.dart';
import 'package:real_estate_app/widgets/top_locations_category_widget.dart';

class TopLocationsCategory extends StatelessWidget {
  const TopLocationsCategory({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
              SizedBox(height: 16),
              Text(
                'Top Locations',
                style: TextStyle(
                  color: Color(0xFF242B5C),
                  fontSize: 25,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  height: 1.4,
                  letterSpacing: 0.75,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Find the best recommendations place to live',
                style: TextStyle(
                  color: Color(0xFF242B5C),
                  fontSize: 12,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                  letterSpacing: 0.36,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TopLocationsCategoryWidget(
                    imageUrl: "https://picsum.photos/200/300",
                    name: "Bali",
                    number: 1,
                    onTap: () {
                      Get.to(() => TopLocationsDetail());
                    },
                  ),
                  SizedBox(width: 10),
                  TopLocationsCategoryWidget(
                    imageUrl: 'https://picsum.photos/200/300',
                    name: "Jakarta",
                    number: 2,
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TopLocationsCategoryWidget(
                    imageUrl: "https://picsum.photos/200/300",
                    name: "Maldives",
                    number: 3,
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  TopLocationsCategoryWidget(
                    imageUrl: 'https://picsum.photos/200/300',
                    name: "Semarang",
                    number: 4,
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TopLocationsCategoryWidget(
                    imageUrl: "https://picsum.photos/200/300",
                    name: "Indonesia",
                    number: 5,
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  TopLocationsCategoryWidget(
                    imageUrl: 'https://picsum.photos/200/300',
                    name: "Jakarta",
                    number: 6,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
