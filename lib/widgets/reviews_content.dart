import 'package:flutter/material.dart';
import 'package:real_estate_app/utils/app_constants.dart';

class ReviewsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 8),
            child: Column(
              children: [
                Container(
                  width: 327,
                  height: 25,
                  padding: const EdgeInsets.only(right: 273),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Today',
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
                ),
                SizedBox(height: 10),
                Container(
                  width: 350,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F4F7),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU'),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              shape: BoxShape.rectangle,
                            ),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Geraldo',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.36,
                              ),
                            ),
                            const SizedBox(height: 4),
                            SizedBox(
                              width: 177,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Just giving ',
                                      style: TextStyle(
                                        color: Color(0xFF53577A),
                                        fontSize: 10,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        height: 1.2,
                                        letterSpacing: 0.30,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '5',
                                      style: TextStyle(
                                        color: Color(0xFF242B5C),
                                        fontSize: 10,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w700,
                                        height: 1.2,
                                        letterSpacing: 0.30,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ',
                                      style: TextStyle(
                                        color: Color(0xFF242B5C),
                                        fontSize: 10,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        height: 1.2,
                                        letterSpacing: 0.30,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Star',
                                      style: TextStyle(
                                        color: Color(0xFF242B5C),
                                        fontSize: 10,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w700,
                                        height: 1.2,
                                        letterSpacing: 0.30,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' review on your listing ',
                                      style: TextStyle(
                                        color: Color(0xFF53577A),
                                        fontSize: 10,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        height: 1.2,
                                        letterSpacing: 0.30,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Fairview Apartment',
                                      style: TextStyle(
                                        color: Color(0xFF242B5C),
                                        fontSize: 10,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w700,
                                        height: 1.2,
                                        letterSpacing: 0.30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              '40 mins ago',
                              style: TextStyle(
                                color: Color(0xFFA1A4C1),
                                fontSize: 8,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 1,
                                letterSpacing: -0.16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        width: 60,
                        height: 50,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(AppConstants.RANDOM_IMAGE_URL),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.50, color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 327,
                  height: 35,
                  padding: const EdgeInsets.only(right: 23),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Older Notifications',
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
                ),
                SizedBox(height: 10),
                Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {},
                  background: Container(
                    color: Color(0xFF242B5C),
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                  child: Container(
                    width: 350,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F4F7),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU'),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Walter Lindsey',
                                style: TextStyle(
                                  color: Color(0xFF242B5C),
                                  fontSize: 12,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.36,
                                ),
                              ),
                              const SizedBox(height: 4),
                              SizedBox(
                                width: 177,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Just giving ',
                                        style: TextStyle(
                                          color: Color(0xFF53577A),
                                          fontSize: 10,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w500,
                                          height: 1.2,
                                          letterSpacing: 0.30,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '5',
                                        style: TextStyle(
                                          color: Color(0xFF242B5C),
                                          fontSize: 10,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w700,
                                          height: 1.2,
                                          letterSpacing: 0.30,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: TextStyle(
                                          color: Color(0xFF242B5C),
                                          fontSize: 10,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w500,
                                          height: 1.2,
                                          letterSpacing: 0.30,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Star',
                                        style: TextStyle(
                                          color: Color(0xFF242B5C),
                                          fontSize: 10,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w700,
                                          height: 1.2,
                                          letterSpacing: 0.30,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' review on your listing ',
                                        style: TextStyle(
                                          color: Color(0xFF53577A),
                                          fontSize: 10,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w500,
                                          height: 1.2,
                                          letterSpacing: 0.30,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Schoolview House',
                                        style: TextStyle(
                                          color: Color(0xFF242B5C),
                                          fontSize: 10,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w700,
                                          height: 1.2,
                                          letterSpacing: 0.30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Text(
                                '5 Days ago',
                                style: TextStyle(
                                  color: Color(0xFFA1A4C1),
                                  fontSize: 8,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  height: 1,
                                  letterSpacing: -0.16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16),
                        Container(
                          width: 60,
                          height: 50,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image:
                                  NetworkImage(AppConstants.RANDOM_IMAGE_URL),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              side:
                                  BorderSide(width: 1.50, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 350,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F4F7),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU'),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              shape: BoxShape.rectangle,
                            ),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Samuel Ella',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.36,
                              ),
                            ),
                            const SizedBox(height: 4),
                            SizedBox(
                              width: 177,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Just giving ',
                                      style: TextStyle(
                                        color: Color(0xFF53577A),
                                        fontSize: 10,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        height: 1.2,
                                        letterSpacing: 0.30,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '4',
                                      style: TextStyle(
                                        color: Color(0xFF242B5C),
                                        fontSize: 10,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w700,
                                        height: 1.2,
                                        letterSpacing: 0.30,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ',
                                      style: TextStyle(
                                        color: Color(0xFF242B5C),
                                        fontSize: 10,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        height: 1.2,
                                        letterSpacing: 0.30,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Star',
                                      style: TextStyle(
                                        color: Color(0xFF242B5C),
                                        fontSize: 10,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w700,
                                        height: 1.2,
                                        letterSpacing: 0.30,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' review on your listing ',
                                      style: TextStyle(
                                        color: Color(0xFF53577A),
                                        fontSize: 10,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        height: 1.2,
                                        letterSpacing: 0.30,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Fairview Apartment',
                                      style: TextStyle(
                                        color: Color(0xFF242B5C),
                                        fontSize: 10,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w700,
                                        height: 1.2,
                                        letterSpacing: 0.30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              '7 Days ago',
                              style: TextStyle(
                                color: Color(0xFFA1A4C1),
                                fontSize: 8,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 1,
                                letterSpacing: -0.16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        width: 60,
                        height: 50,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(AppConstants.RANDOM_IMAGE_URL),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1.50, color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
