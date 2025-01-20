import 'package:booking_room/core/utils/assets.dart';
import 'package:booking_room/features/splash/presentation/views/widgets/custom_description_onboarding.dart';
import 'package:booking_room/features/splash/presentation/views/widgets/custom_image_onboarding.dart';
import 'package:booking_room/features/splash/presentation/views/widgets/custom_skip_onboarding.dart';
import 'package:booking_room/features/splash/presentation/views/widgets/custom_title_onboarding.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Column(
          crossAxisAlignment:CrossAxisAlignment.end ,
          children: [
            CustomSkipOnboarding(),
            CustomImageOnboarding(image: '${AppAssets.onboarding_3}', height: 360, width: 323,),
            CustomTitleOnboarding(title: 'Achieve your goal and be unique',),
            CustomDescriptionOnboarding(description: 'After completing the course, you will be able to keep up with the labor market and obtain a job opportunity in your field or start your own project.',),

          ],
        ),
      ),
    );
  }
}
