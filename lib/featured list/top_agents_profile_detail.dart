import 'package:flutter/material.dart';
import 'package:real_estate_app/widgets/nearby_estates.dart';

class TopAgentsProfileDetail extends StatefulWidget {
  @override
  State<TopAgentsProfileDetail> createState() => _TopAgentsProfileDetailState();
}

class _TopAgentsProfileDetailState extends State<TopAgentsProfileDetail>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 14,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.upload),
                      onPressed: () {},
                    ),
                  ],
                ),
                Text(
                  "Amanda",
                  style: TextStyle(
                    color: Color(0xFF242B5C),
                    fontSize: 14,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.42,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "amanda.trust@gmail.com",
                  style: TextStyle(
                    color: Color(0xFF53577A),
                    fontSize: 10,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.30,
                  ),
                ),
                SizedBox(height: 5),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/user.png'),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Color(0xFF8BC83F),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "#1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 170,
                      height: 100,
                      padding: EdgeInsets.all(20),
                      decoration: ShapeDecoration(
                        color: Color(0x1C234E68),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.5, color: Colors.black12),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            '5.0',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 18,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 5),
                          _buildStarRow(5),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 70,
                      padding: EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.5, color: Colors.black12),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            '235',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 18,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Reviews',
                            style: TextStyle(
                              color: Color(0xFF53577A),
                              fontSize: 12,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 102,
                      height: 70,
                      padding: EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Colors.black12),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            '112',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 18,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Sold',
                            style: TextStyle(
                              color: Color(0xFF53577A),
                              fontSize: 12,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 70,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF5F4F7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: TabBar(
                    controller: tabController,
                    labelColor: Colors.black,
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    tabs: [
                      Tab(
                        text: 'Listings',
                      ),
                      Tab(text: 'Sold'),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 327,
                  height: 40,
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '140',
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
                          'listings',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 18,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NearbyEstates(
                      imageUri: "https://picsum.photos/200/300",
                      name: "Brookvale Villa",
                      rating: "5",
                      location: "Jakarta, Indonesia",
                      rent: "\$ 320/month",
                    ),
                    SizedBox(width: 30),
                    NearbyEstates(
                      imageUri: "https://picsum.photos/200/300",
                      name: "The Overdale Apartment",
                      rating: "4.8",
                      location: "Bali, Indonesia",
                      rent: "\$ 290/month",
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
                      name: "Brookvale Villa",
                      rating: "5",
                      location: "Jakarta, Indonesia",
                      rent: "\$ 320/month",
                    ),
                    SizedBox(width: 30),
                    NearbyEstates(
                      imageUri: "https://picsum.photos/200/300",
                      name: "The Overdale Apartment",
                      rating: "4.8",
                      location: "Bali, Indonesia",
                      rent: "\$ 290/month",
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          height: 63,
          width: 327,
          margin: EdgeInsets.only(bottom: 30),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Start Chat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.48,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF8BC83F),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildStarRow(int numStars) {
  List<Widget> stars = [];
  for (int i = 0; i < numStars; i++) {
    stars.add(Icon(Icons.star, color: Colors.yellow));
  }
  return Row(children: stars);
}
