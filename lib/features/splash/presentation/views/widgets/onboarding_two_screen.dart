import 'package:booking_room/core/utils/assets.dart';
import 'package:booking_room/features/splash/presentation/views/widgets/custom_description_onboarding.dart';
import 'package:booking_room/features/splash/presentation/views/widgets/custom_image_onboarding.dart';
import 'package:booking_room/features/splash/presentation/views/widgets/custom_skip_onboarding.dart';
import 'package:booking_room/features/splash/presentation/views/widgets/custom_title_onboarding.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Column(
          crossAxisAlignment:CrossAxisAlignment.end ,
          children: [
            CustomSkipOnboarding(),
            CustomImageOnboarding(image: '${AppAssets.onboarding_2}', height: 340, width: 367,),
            CustomTitleOnboarding(title: 'Excellent learning environment',),
            CustomDescriptionOnboarding(description: 'You can choose the constructor you like, and the academy provides continuous follow-up and periodic exams, and viewing the educational content on our platform to catch up on what you missed.',),

          ],
        ),
      ),
    );
  }
}
