import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/profile/edit_profile.dart';
import 'package:real_estate_app/profile/reviews.dart';
import 'package:real_estate_app/widgets/listings_widget.dart';
import 'package:real_estate_app/widgets/transaction_widget.dart';

class ProfileTransaction extends StatefulWidget {
  @override
  State<ProfileTransaction> createState() => _ProfileTransactionState();
}

class _ProfileTransactionState extends State<ProfileTransaction>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 170),
                  Center(
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 14,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(width: 130),
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {},
                  ),
                ],
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
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFF234F68),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Get.to(() => EditProfile());
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                "Mathew Adam",
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
                "mathew@email.com",
                style: TextStyle(
                  color: Color(0xFF53577A),
                  fontSize: 10,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.30,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                          '30',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 18,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Listings',
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
                          '12',
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
                          '28',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 18,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => Reviews());
                          },
                          child: Text(
                            'Reviews',
                            style: TextStyle(
                              color: Color(0xFF53577A),
                              fontSize: 12,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
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
                      text: 'Transaction',
                    ),
                    Tab(
                      text: 'Listings',
                    ),
                    Tab(text: 'Sold'),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: MediaQuery.of(context).size.height - 250,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    TransactionWidget(),
                    ListingsWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
