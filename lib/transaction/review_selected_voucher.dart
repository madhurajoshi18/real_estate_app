import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/transaction/transaction_review_fill.dart';

class ReviewSelectedVoucher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 1.0,
      minChildSize: 0.2,
      builder: (context, controller) {
        return Container(
          height: 1300,
          width: 375,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                width: 70,
                height: 3,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Add Voucher',
                    style: TextStyle(
                      color: Color(0xFF242B5C),
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.54,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 327,
                height: 70,
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
                    SizedBox(width: 10),
                    Icon(Icons.countertops_outlined),
                    const SizedBox(width: 10),
                    Text(
                      'Type your voucher ',
                      style: TextStyle(
                        color: Color(0xFFA1A4C1),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your Available vouchers',
                    style: TextStyle(
                      color: Color(0xFF242B5C),
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.54,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 327,
                height: 85,
                decoration: BoxDecoration(
                  color: Color(0xFF8BC83F).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Container(
                      width: 53,
                      height: 53,
                      decoration: ShapeDecoration(
                        color: Color(0xFF234F68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child:
                          Icon(Icons.countertops_outlined, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'HLWN40',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 18,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.54,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          'Click to use this voucher',
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 9,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.27,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 327,
                height: 85,
                decoration: BoxDecoration(
                  color: Color(0xFF8BC83F).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Container(
                      width: 53,
                      height: 53,
                      decoration: ShapeDecoration(
                        color: Color(0xFF234F68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child:
                          Icon(Icons.countertops_outlined, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'HGJC20',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 18,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.54,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          'Click to use this voucher',
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 9,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.27,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
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
                    Get.to(() => TransactionReviewFill());
                  },
                  child: Center(
                    child: Text(
                      'Apply Voucher',
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
            ],
          ),
        );
      },
    );
  }
}
