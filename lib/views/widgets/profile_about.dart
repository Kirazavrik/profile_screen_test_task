import 'package:flutter/material.dart';
import 'package:profile_screen_test_task/constants/strings.dart';
import 'package:profile_screen_test_task/utils/shared_styles.dart';

class ProfileAbout extends StatelessWidget {
  const ProfileAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 33.0, right: 47.0, top: 12.0),
      child: Text(
        Strings.about,
        style: textStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w500),
      ),
    );
  }
}
