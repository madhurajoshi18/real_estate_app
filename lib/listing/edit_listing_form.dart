import 'package:flutter/material.dart';
import 'package:real_estate_app/listing/listing_form_success.dart';

class EditListingForm extends StatelessWidget {
  void _showUserSuccessBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => ListingFormSuccess(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
            "Edit Listing",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF242B5C),
              fontSize: 14,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
            ),
          ),
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
                                  'House',
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
                                  'Schoolview \nHouse',
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
                                        color: Color(0xFF53577A), size: 16),
                                    SizedBox(width: 5),
                                    Text(
                                      '4.9',
                                      style: TextStyle(
                                        color: Color(0xFF53577A),
                                        fontSize: 8,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w700,
                                        height: 1,
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
                                      'Semarang, Indonesia',
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
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Listing Title',
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
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Schoolview House',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.36,
                        ),
                      ),
                      SizedBox(width: 180),
                      Icon(
                        Icons.home_outlined,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Listing type',
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
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFF234F68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Rent',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 70,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFF234F68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Sell',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
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
                    'Property category',
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
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFF234F68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'House',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 100,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Apartment',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Hotel',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 80,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Villa',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 90,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Cottage',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Location',
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
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.60, color: Color(0xFFF5F4F7)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Icon(Icons.location_on, color: Color(0xFF242B5C)),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Jl. Gerungsari, Bulusan, Kec. Tembalang, Kota \nSemarang, Jawa Tengah 50277',
                      style: TextStyle(
                        color: Color(0xFF53577A),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        height: 1.67,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: 327,
                    height: 235,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/200/300"),
                        fit: BoxFit.cover,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: 327,
                      height: 50,
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.5)),
                    ),
                  ),
                  Positioned(
                    left: 117,
                    bottom: 15,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Select on the map',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          height: 1.67,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Listing Photos',
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
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 159,
                      height: 161,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://picsum.photos/200/300',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 2,
                            right: 2,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xFF8BC83F),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      width: 159,
                      height: 161,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://picsum.photos/200/300',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 2,
                            right: 2,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xFF8BC83F),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 159,
                      height: 161,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://picsum.photos/200/300',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 2,
                            right: 2,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xFF8BC83F),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
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
                    'Sell Price',
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
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        '\$ 150,000',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.36,
                        ),
                      ),
                      SizedBox(width: 220),
                      Icon(
                        Icons.attach_money_outlined,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Rent Price',
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
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        '\$ 320',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.36,
                        ),
                      ),
                      const SizedBox(width: 2),
                      Text(
                        '/month',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.30,
                        ),
                      ),
                      SizedBox(width: 210),
                      Icon(
                        Icons.attach_money_outlined,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 88,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFF234F68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        'Monthly',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 80,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Yearly',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.30,
                        ),
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
                    'Property Features',
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
                height: 70,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 327,
                        height: 70,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F4F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 28,
                      child: Text(
                        'Bedroom',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 206,
                      top: 20,
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFA1A5C1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                            const SizedBox(width: 18),
                            Text(
                              '2',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 16,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.48,
                              ),
                            ),
                            const SizedBox(width: 18),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFA1A5C1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 327,
                height: 70,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 327,
                        height: 70,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F4F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 28,
                      child: Text(
                        'Bathroom',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 206,
                      top: 20,
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFA1A5C1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                            const SizedBox(width: 18),
                            Text(
                              '2',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 16,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.48,
                              ),
                            ),
                            const SizedBox(width: 18),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFA1A5C1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 327,
                height: 70,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 327,
                        height: 70,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F4F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 28,
                      child: Text(
                        'Balcony',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 206,
                      top: 20,
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFA1A5C1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                            const SizedBox(width: 18),
                            Text(
                              '1',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 16,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.48,
                              ),
                            ),
                            const SizedBox(width: 18),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFA1A5C1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
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
                    'Total Rooms',
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
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 50,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 17.50),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F4F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '🛋️',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 15,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                height: 1,
                                letterSpacing: 0.45,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              '< 4',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 10,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 50,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 17.50),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F4F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '🛋️',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 15,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                height: 1,
                                letterSpacing: 0.45,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              '4',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 10,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 50,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 17.50),
                        decoration: ShapeDecoration(
                          color: Color(0xFF242B5C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '🛋️',
                              style: TextStyle(
                                color: Color(0xFFF5F4F7),
                                fontSize: 15,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                height: 1,
                                letterSpacing: 0.45,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              '6',
                              style: TextStyle(
                                color: Color(0xFFF5F4F7),
                                fontSize: 10,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 50,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 17.50),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F4F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '🛋️',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 15,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                height: 1,
                                letterSpacing: 0.45,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              '< 4',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 10,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ],
                        ),
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
                    'Environment / Facilities',
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
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 110,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 17),
                      decoration: ShapeDecoration(
                        color: Color(0xFF234F68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Parking  Lot',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 110,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFF234F68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Pet  Allowed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Container(
                      width: 75,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 17),
                      decoration: ShapeDecoration(
                        color: Color(0xFF234F68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Garden',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      width: 75,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        'Gym',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      width: 75,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        'Park',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        'Home theatre',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      width: 120,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        "Kid's  Friendly",
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 10,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
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
                      _showUserSuccessBottomSheet(context);
                    },
                    child: Center(
                      child: Text(
                        'Update',
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
      ),
    );
  }
}
