import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/Detail/reviews_gallery.dart';

class ViewAllReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
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
        title: Text(
          "Reviews",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF242B5C),
            fontSize: 14,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
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
                  Icons.arrow_forward_ios,
                  color: Color(0xFF234F68),
                ),
                onPressed: () {
                  Get.to(() => ReviewsGallery());
                },
                iconSize: 20,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Container(
                  width: 327,
                  height: 120,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF5F4F7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                            child: Container(
                              width: 168,
                              height: 104,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://picsum.photos/200/300'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 6,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.favorite_outline_outlined,
                                  color: Colors.red,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: Color(0xAF234F68),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                'Apartment',
                                style: TextStyle(
                                  color: Color(0xFFF5F4F7),
                                  fontSize: 8,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sky Dandelions \nApartment',
                                style: TextStyle(
                                  color: Color(0xFF242B5C),
                                  fontSize: 12,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w800,
                                  height: 1.4,
                                  letterSpacing: 0.36,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 16),
                                  SizedBox(width: 5),
                                  Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: Color(0xFF53577A),
                                      fontSize: 8,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.location_on,
                                      color: Color(0xFF53577A), size: 16),
                                  SizedBox(width: 5),
                                  Text(
                                    'Jakarta, Indonesia',
                                    style: TextStyle(
                                      color: Color(0xFF53577A),
                                      fontSize: 8,
                                      fontFamily: 'Raleway',
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
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildStarRating("All", Color(0xFF234F68)),
                        SizedBox(width: 10),
                        _buildStarRating("1"),
                        SizedBox(width: 10),
                        _buildStarRating("2"),
                        SizedBox(width: 10),
                        _buildStarRating("3"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'User reviews',
                  style: TextStyle(
                    color: Color(0xFF242B5C),
                    fontSize: 18,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.54,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 350,
              height: 130,
              padding: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU",
                    ),
                    radius: 40,
                  ),
                  SizedBox(width: 4),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Kurt Mullins",
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.36,
                              ),
                            ),
                            SizedBox(width: 100),
                            Icon(Icons.star,
                                color: Colors.yellowAccent, size: 15),
                            Icon(Icons.star,
                                color: Colors.yellowAccent, size: 15),
                            Icon(Icons.star,
                                color: Colors.yellowAccent, size: 15),
                            Icon(Icons.star,
                                color: Colors.yellowAccent, size: 15),
                            Icon(Icons.star_outline_outlined,
                                color: Colors.yellow, size: 15),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 10,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w400,
                            height: 2,
                            letterSpacing: 0.30,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "10 mins ago",
                          style: TextStyle(
                            color: Color(0xFFA1A4C1),
                            fontSize: 8,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 2.12,
                            letterSpacing: -0.16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 350,
              height: 200,
              padding: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU",
                    ),
                    radius: 40,
                  ),
                  SizedBox(width: 4),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Samuel Ella",
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.36,
                              ),
                            ),
                            SizedBox(width: 100),
                            Icon(Icons.star,
                                color: Colors.yellowAccent, size: 15),
                            Icon(Icons.star,
                                color: Colors.yellowAccent, size: 15),
                            Icon(Icons.star,
                                color: Colors.yellowAccent, size: 15),
                            Icon(Icons.star,
                                color: Colors.yellowAccent, size: 15),
                            Icon(Icons.star_outline_outlined,
                                color: Colors.yellow, size: 15),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 10,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w400,
                            height: 2,
                            letterSpacing: 0.30,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://picsum.photos/200/300"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 1.50, color: Colors.white),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              width: 60,
                              height: 60,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://picsum.photos/200/300"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 1.50, color: Colors.white),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              width: 60,
                              height: 60,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://picsum.photos/200/300"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 1.50, color: Colors.white),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "10 mins ago",
                          style: TextStyle(
                            color: Color(0xFFA1A4C1),
                            fontSize: 8,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 2.12,
                            letterSpacing: -0.16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 350,
              height: 130,
              padding: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU",
                    ),
                    radius: 40,
                  ),
                  SizedBox(width: 4),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Kay Swanson",
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.36,
                              ),
                            ),
                            SizedBox(width: 90),
                            Icon(Icons.star,
                                color: Colors.yellowAccent, size: 15),
                            Icon(Icons.star,
                                color: Colors.yellowAccent, size: 15),
                            Icon(Icons.star,
                                color: Colors.yellowAccent, size: 15),
                            Icon(Icons.star,
                                color: Colors.yellowAccent, size: 15),
                            Icon(Icons.star_outline_outlined,
                                color: Colors.yellow, size: 15),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperia.",
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 10,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w400,
                            height: 2,
                            letterSpacing: 0.30,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "10 mins ago",
                          style: TextStyle(
                            color: Color(0xFFA1A4C1),
                            fontSize: 8,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 2.12,
                            letterSpacing: -0.16,
                          ),
                        ),
                      ],
                    ),
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

Widget _buildStarRating(String label,
    [Color backgroundColor = const Color(0xFFE8E8E8)]) {
  return Container(
    height: 50,
    width: 80,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(25),
      color: backgroundColor,
    ),
    child: Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.orange),
          SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
