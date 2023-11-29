import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/location/location_empty.dart';

class FAQ extends StatefulWidget {
  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> with TickerProviderStateMixin {
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

  bool isExpanded1 = false;
  bool isExpanded2 = false;

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
                  Get.to(() => LocationEmpty());
                },
                iconSize: 20,
              ),
            ),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'FAQ',
                                style: TextStyle(
                                  color: Color(0xFF1F4C6B),
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w800,
                                  height: 1.4,
                                  letterSpacing: 0.75,
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: TextStyle(
                                  color: Color(0xFF242B5C),
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w800,
                                  height: 1.4,
                                  letterSpacing: 0.75,
                                ),
                              ),
                              TextSpan(
                                text: '&',
                                style: TextStyle(
                                  color: Color(0xFF242B5C),
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                  height: 1.4,
                                  letterSpacing: 0.75,
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: TextStyle(
                                  color: Color(0xFF242B5C),
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w800,
                                  height: 1.4,
                                  letterSpacing: 0.75,
                                ),
                              ),
                              TextSpan(
                                text: 'Support',
                                style: TextStyle(
                                  color: Color(0xFF1f4c6b),
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w800,
                                  height: 1.4,
                                  letterSpacing: 0.75,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Find the answers to your problems using this app.',
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 12,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                            letterSpacing: 0.36,
                          ),
                        ),
                        SizedBox(height: 30),
                        Column(
                          children: [
                            buildIconRow(Icons.language, 'Visit Our Website'),
                            SizedBox(height: 10),
                            buildIconRow(Icons.email, 'Email Us'),
                            SizedBox(height: 10),
                            buildIconRow(Icons.description, 'Terms of Service'),
                          ],
                        ),
                        SizedBox(height: 20),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xFFF5F4F7)),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Icon(Icons.search),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Try finding "how to"',
                                          hintStyle: TextStyle(
                                            color: Color(0xFFA1A4C1),
                                            fontSize: 12,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.36,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 70,
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 8),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF5F4F7),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
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
                                    text: 'Buyer',
                                  ),
                                  Tab(text: 'Estate Agent'),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                        buildExpansionTile(
                          'Why is Rise Real Estate?',
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          isExpanded1,
                          () {
                            setState(() {
                              isExpanded1 = !isExpanded1;
                            });
                          },
                        ),
                        SizedBox(height: 20),
                        buildExpansionTile(
                          'Why choose to buy in Rise?',
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          isExpanded2,
                          () {
                            setState(() {
                              isExpanded2 = !isExpanded2;
                            });
                          },
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildIconRow(IconData icon, String text) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Color(0xFF1F4C6B),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Colors.white),
            ),
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              color: Color(0xFF242B5C),
              fontSize: 14,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w500,
              height: 1.2,
              letterSpacing: 0.36,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildExpansionTile(
    String title,
    String content,
    bool isExpanded,
    VoidCallback onTap,
  ) {
    return ExpansionTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFF242B5C),
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
          letterSpacing: 0.42,
        ),
      ),
      onExpansionChanged: (value) {
        onTap(); // Execute the provided callback to handle expansion state
      },
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            content,
            style: TextStyle(
              color: Color(0xFF53577A),
              fontSize: 12,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w400,
              height: 1.2,
              letterSpacing: 0.36,
            ),
          ),
        ),
      ],
      initiallyExpanded: isExpanded, // Maintain the expansion state
    );
  }
}
