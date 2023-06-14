import 'package:flutter/material.dart';

import '../../utils/shared_styles.dart';

class ProfileInterests extends StatelessWidget {
  const ProfileInterests({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 24.0, left: 29.0, right: 28.0, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Интересы',
              style: textStyle.copyWith(fontSize: 14),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                InterestTag(tag: 'Музыка', height: 43.0),
                InterestTag(tag: 'Спорт'),
                InterestTag(
                  tag: 'Путешествия',
                  padding: 0.0,
                )
              ],
            ),
          ),
          const Row(
            children: [
              InterestTag(tag: 'Развлечения'),
              InterestTag(tag: 'Кино'),
              InterestTag(
                tag: 'Книги',
                padding: 0.0,
              )
            ],
          )
        ],
      ),
    );
  }
}

class InterestTag extends StatelessWidget {
  final double height;
  final String tag;
  final double padding;

  const InterestTag({
    super.key,
    required this.tag,
    this.padding = 24.0,
    this.height = 39.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: padding),
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(
          horizontal: 9.0,
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
        child: Center(
          child: Text(
            tag,
            style: textStyle.copyWith(
                fontSize: 15.0, color: const Color(0xFFFF9500)),
          ),
        ),
      ),
    );
  }
}
