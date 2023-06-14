import 'package:flutter/material.dart';

class ProfilePosts extends StatelessWidget {
  const ProfilePosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
      child: SizedBox(
        height: 350,
        child: GridView.count(
          scrollDirection: Axis.vertical,
          physics: const ScrollPhysics(),
          crossAxisCount: 3,
          children: const [
            PostEntity(asset: 'assets/post1.png', isVideo: false),
            PostEntity(asset: 'assets/post2.png', isVideo: true),
            PostEntity(asset: 'assets/post3.png', isVideo: true),
            PostEntity(asset: 'assets/post4.png', isVideo: false),
            PostEntity(asset: 'assets/post5.png', isVideo: false),
            PostEntity(asset: 'assets/post6.png', isVideo: true),
            PostEntity(asset: 'assets/post7.png', isVideo: false),
            PostEntity(asset: 'assets/post8.png', isVideo: false),
            PostEntity(asset: 'assets/post9.png', isVideo: false),
          ],
        ),
      ),
    );
  }
}

class PostEntity extends StatelessWidget {
  final String asset;
  final bool isVideo;

  const PostEntity({super.key, required this.asset, required this.isVideo});

  @override
  Widget build(BuildContext context) {
    return isVideo
        ? Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  asset,
                  height: 99,
                  width: 99,
                ),
              ),
              Image.asset('assets/rectangle.png'),
              Image.asset('assets/triangle.png')
            ],
          )
        : ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              asset,
              height: 99,
              width: 99,
            ),
          );
  }
}
