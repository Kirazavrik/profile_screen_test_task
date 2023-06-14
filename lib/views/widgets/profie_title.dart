import 'package:flutter/material.dart';
import 'package:profile_screen_test_task/constants/strings.dart';
import 'package:profile_screen_test_task/utils/shared_styles.dart';

class ProfileTitle extends StatelessWidget {
  const ProfileTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              Image.asset('assets/avatar.png'),
              const Icon(Icons.photo_camera)
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.name,
                  style: textStyle,
                ),
                Text(
                  Strings.location,
                  style: textStyle.copyWith(fontSize: 12),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42.0),
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Image.asset('assets/badge.png'),
                Text(
                  '9,7',
                  style: textStyle.copyWith(
                      fontSize: 14.0, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
