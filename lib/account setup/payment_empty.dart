import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/account%20setup/user_empty.dart';
import 'package:real_estate_app/widgets/mastercard_widget.dart';
import 'package:real_estate_app/widgets/paypal_widget.dart';

class PaymentEmpty extends StatefulWidget {
  @override
  State<PaymentEmpty> createState() => _PaymentEmptyState();
}

class _PaymentEmptyState extends State<PaymentEmpty>
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              width: 86,
              height: 38,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Center(
                child: Text(
                  'skip',
                  style: TextStyle(
                    color: Color(0xFF393E67),
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.36,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 274,
                height: 120,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Add your\n',
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
                            text: 'payment method',
                            style: TextStyle(
                              color: Color(0xFF1F4C6B),
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
                    const SizedBox(height: 20),
                    Text(
                      'You can edit this later on your account setting.',
                      style: TextStyle(
                        color: Color(0xFF53577A),
                        fontSize: 12,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Container(
                width: 300,
                height: 150,
                color: Colors.transparent,
                child: Image.asset(
                  'assets/Credit Card.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 50,
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: TabBar(
                controller: tabController,
                unselectedLabelColor: Colors.black,
                labelColor: Colors.white,
                indicator: BoxDecoration(
                  color: Color(0xFF242B5C),
                  borderRadius: BorderRadius.circular(25),
                ),
                tabs: [
                  _buildTabWithIcon('Paypal', FontAwesomeIcons.paypal),
                  _buildTabWithIcon('Mastercard', FontAwesomeIcons.creditCard),
                  _buildTabWithIcon('Visa', FontAwesomeIcons.ccVisa),
                ],
              ),
            ),
            SizedBox(height: 12.0),
            Container(
              height: 250,
              child: TabBarView(controller: tabController, children: [
                PaypalWidget(),
                MastercardWidget(),
                PaypalWidget(),
              ]),
            ),
            SizedBox(height: 4),
            Center(
              child: Container(
                width: 278,
                height: 63,
                decoration: ShapeDecoration(
                  color: Color(0xFF8BC83F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Get.to(() => UserEmpty());
                  },
                  child: Center(
                    child: Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.48,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabWithIcon(String text, IconData icon) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon),
          SizedBox(width: 2),
          Text(text),
        ],
      ),
    );
  }
}
