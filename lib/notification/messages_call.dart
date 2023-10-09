import 'package:flutter/material.dart';

class MessagesCall extends StatelessWidget {
  const MessagesCall({super.key});

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
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 327,
                child: Text(
                  'Milano',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF242B5C),
                    fontSize: 25,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    height: 1.4,
                    letterSpacing: 0.75,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 60,
                  height: 24,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: ShapeDecoration(
                    color: Color(0xAF1F4C6B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '12.25',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 100),
              Container(
                width: 200,
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Opacity(
                        opacity: 0.15,
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFF8BC83F),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Opacity(
                        opacity: 0.08,
                        child: Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Color(0xFF8BC83F),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 35,
                      top: 35,
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU'),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(
                            side: BorderSide(
                              width: 2,
                              strokeAlign: BorderSide.strokeAlignOutside,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              Container(
                width: 375,
                height: 188,
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 73,
                  right: 72,
                  bottom: 24,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Color(0xFFF5F4F7),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 5, color: Colors.white),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon:
                                  Icon(Icons.chat_rounded, color: Colors.black),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.mic_off_outlined,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Container(
                          width: 230,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0xFF8BC83F),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'End Call',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.36,
                                  ),
                                ),
                                SizedBox(width: 40),
                                Icon(Icons.call_end_outlined,
                                    color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
