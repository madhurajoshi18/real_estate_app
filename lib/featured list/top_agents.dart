import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/featured%20list/top_agents_profile_detail.dart';

import '../widgets/top_agents_widget.dart';

class TopAgents extends StatelessWidget {
  const TopAgents({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 16),
              Text(
                'Top Agents',
                style: TextStyle(
                  color: Color(0xFF242B5C),
                  fontSize: 25,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  height: 1.4,
                  letterSpacing: 0.75,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Find the best recommendations place to live',
                style: TextStyle(
                  color: Color(0xFF242B5C),
                  fontSize: 12,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                  letterSpacing: 0.36,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TopAgentsWidget(
                    circleAvatarImageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU',
                    name: "Amanda",
                    number: 1,
                    homeSold: 112,
                    rating: 5,
                    onTap: () {
                      Get.to(() => TopAgentsProfileDetail());
                    },
                  ),
                  SizedBox(width: 10),
                  TopAgentsWidget(
                    circleAvatarImageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU',
                    name: "Anderson",
                    number: 2,
                    homeSold: 112,
                    rating: 4.9,
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TopAgentsWidget(
                    circleAvatarImageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU',
                    name: "Samantha",
                    number: 3,
                    homeSold: 112,
                    rating: 5,
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  TopAgentsWidget(
                    circleAvatarImageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU',
                    name: "Andrew",
                    number: 4,
                    homeSold: 112,
                    rating: 4.9,
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TopAgentsWidget(
                    circleAvatarImageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU',
                    name: "Michael",
                    number: 5,
                    homeSold: 112,
                    rating: 5,
                    onTap: () {},
                  ),
                  SizedBox(width: 10),
                  TopAgentsWidget(
                    circleAvatarImageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU',
                    name: "Tobi",
                    number: 6,
                    homeSold: 112,
                    rating: 4.9,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
