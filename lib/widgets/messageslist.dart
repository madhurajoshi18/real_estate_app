import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/notification/delete_confirmation.dart';
import 'package:real_estate_app/notification/messages_chat.dart';

class MessagesList extends StatelessWidget {
  void _showUserSuccessBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => DeleteConfirmation(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 8),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              width: 327,
              height: 25,
              padding: const EdgeInsets.only(right: 23),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      _showUserSuccessBottomSheet(context);
                    },
                    child: Text(
                      'All Chats',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 18,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 420,
              height: 80,
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              padding: const EdgeInsets.all(6),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU'),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => MessagesChat());
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Milano',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 12,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.36,
                            ),
                          ),
                          Text(
                            'tempor incididunt ut labore et dolore',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 10,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '10:45',
                        style: TextStyle(
                          color: Color(0xFFA1A4C1),
                          fontSize: 8,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: -0.16,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: ShapeDecoration(
                          color: Color(0xFF8BC83F),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 420,
              height: 80,
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              padding: const EdgeInsets.all(6),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
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
                          'Samuel Ella',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 12,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.36,
                          ),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet',
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 10,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '11:00',
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
                ],
              ),
            ),
            SizedBox(height: 20),
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
                width: 420,
                height: 80,
                decoration: ShapeDecoration(
                  color: Color(0xFFF5F4F7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 25,
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
                            'Emmmet Perry',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 12,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.36,
                            ),
                          ),
                          Text(
                            'Excepteur sint occaceat cupidatat non',
                            style: TextStyle(
                              color: Color(0xFF53577A),
                              fontSize: 10,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '12:50',
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
                    SizedBox(width: 16),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 420,
              height: 80,
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              padding: const EdgeInsets.all(6),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
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
                        Text(
                          'Quis nostrud exercitation ullamco',
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 10,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '1 Day',
                        style: TextStyle(
                          color: Color(0xFFA1A4C1),
                          fontSize: 8,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: -0.16,
                        ),
                      ),
                      Text(
                        'ago',
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
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 420,
              height: 80,
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              padding: const EdgeInsets.all(6),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
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
                          'Velma Cole',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 12,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.36,
                          ),
                        ),
                        Text(
                          'Excepteur sint occaecat cupidatat non',
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 10,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '2 Days',
                        style: TextStyle(
                          color: Color(0xFFA1A4C1),
                          fontSize: 8,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 1,
                          letterSpacing: -0.16,
                        ),
                      ),
                      Text(
                        'ago',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
