import 'package:booking_room/core/utils/assets.dart';
import 'package:booking_room/core/utils/colors.dart';
import 'package:booking_room/features/splash/presentation/views/widgets/custom_description_onboarding.dart';
import 'package:booking_room/features/splash/presentation/views/widgets/custom_image_onboarding.dart';
import 'package:booking_room/features/splash/presentation/views/widgets/custom_skip_onboarding.dart';
import 'package:booking_room/features/splash/presentation/views/widgets/custom_title_onboarding.dart';
import 'package:flutter/material.dart';
class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Column(
          crossAxisAlignment:CrossAxisAlignment.end ,
          children: [
            CustomSkipOnboarding(),
            CustomImageOnboarding(image: '${AppAssets.onboarding_1}', height: 340, width: 357,),
            CustomTitleOnboarding(title: 'Best place to learn programming',),
            CustomDescriptionOnboarding(description: 'In Course programming center, you will learn how to code in the right way with the best instructors.',),

          ],
        ),
      ),
    );
  }
}
