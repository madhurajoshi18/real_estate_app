import 'package:flutter/material.dart';
import 'package:real_estate_app/widgets/all_content.dart';
import 'package:real_estate_app/widgets/messageslist.dart';
import 'package:real_estate_app/widgets/reviews_content.dart';

class NotificationList extends StatefulWidget {
  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList>
    with TickerProviderStateMixin {
  late TabController tabController;
  late TabController subTabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    subTabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    subTabController.dispose();
    super.dispose();
  }

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
          IconButton(
            icon: Icon(Icons.delete, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
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
                  text: 'Notification',
                ),
                Tab(
                  text: 'Messages',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: TabBar(
                      controller: subTabController,
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.white,
                      indicator: BoxDecoration(
                        color: Color(0xFF242B5C),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      tabs: [
                        Tab(
                          text: 'All',
                        ),
                        Tab(
                          text: 'Reviews',
                        ),
                        Tab(text: 'Sold'),
                        Tab(text: 'House'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(controller: subTabController, children: [
                      AllContent(),
                      ReviewsContent(),
                    ]),
                  ),
                ],
              ),
              MessagesList(),
            ]),
          ),
        ],
      ),
    );
  }
}
