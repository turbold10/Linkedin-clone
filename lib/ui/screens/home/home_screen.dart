import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin/utils/custom_inkwell.dart';
import 'package:linkedin/utils/constants/typography.dart';
import 'package:linkedin/ui/custom_widgets/custom_avatar.dart';
import 'package:linkedin/ui/custom_widgets/custom_category_section.dart';
import 'package:linkedin/ui/custom_widgets/custom_job_card_section.dart';
import 'package:linkedin/utils/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: const Color(0xffE5E5E5),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 86,
                  child: Stack(
                    children: [
                      const Positioned(
                        top: 25,
                        left: 20,
                        child: Text(
                          ' Hello\n Orlando Diggs',
                          style: titleMedium,
                        ),
                      ),
                      Positioned(
                        top: 30,
                        right: 30,
                        child: CustomInkwell(
                          onTap: () => Get.toNamed(profileRoute),
                          child: const CustomAvatar(
                            imageUrl:
                                'https://images.unsplash.com/photo-1664730302624-3cba2a181006?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
                            radius: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/banner.png',
                      fit: BoxFit.fill,
                    )),
                const CustomCategorySection(),
                const CustomJobCardSection(),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
