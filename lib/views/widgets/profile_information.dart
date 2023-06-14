import 'package:flutter/material.dart';
import 'package:profile_screen_test_task/utils/shared_styles.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 18.0, left: 52.0, right: 52.0),
      child: SizedBox(
        height: 43.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProfileInformationEntity('87', 'Постов'),
            VerticalDivider(
              thickness: 1.0,
              color: Colors.black,
            ),
            ProfileInformationEntity('870', 'Подписчики'),
            VerticalDivider(
              thickness: 1.0,
              color: Colors.black,
            ),
            ProfileInformationEntity('350', 'Друзья'),
          ],
        ),
      ),
    );
  }
}

class ProfileInformationEntity extends StatelessWidget {
  final String count;
  final String name;

  const ProfileInformationEntity(this.count, this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          count,
          style: textStyle.copyWith(fontSize: 14),
        ),
        Text(
          name,
          style:
              textStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
