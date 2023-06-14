import 'package:flutter/material.dart';
import 'package:profile_screen_test_task/constants/strings.dart';
import 'package:profile_screen_test_task/utils/shared_styles.dart';
import 'package:profile_screen_test_task/views/widgets/profie_title.dart';
import 'package:profile_screen_test_task/views/widgets/profile_about.dart';
import 'package:profile_screen_test_task/views/widgets/profile_information.dart';
import 'package:profile_screen_test_task/views/widgets/profile_interests.dart';
import 'package:profile_screen_test_task/views/widgets/profile_posts.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFF5F5F5)),
      home: const ProfileView(),
    );
  }
}

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 20),
          ],
        ),
        child: BottomNavigationBar(

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Категории',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Чат',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Профиль',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Меню',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFFFF9500),
          selectedFontSize: 10,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: textStyle.copyWith(
              fontWeight: FontWeight.w500, color: Colors.black, fontSize: 10),

          onTap: _onItemTapped,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28),
            child: Center(
              child: Text(
                Strings.title,
                style: textStyle,
              ),
            ),
          ),
          const ProfileTitle(),
          const ProfileInformation(),
          const ProfileAbout(),
          const ProfileInterests(),
          Padding(
            padding: const EdgeInsets.only(left: 34.0),
            child: Text('Посты', style: textStyle.copyWith(fontSize: 14)),
          ),
          const ProfilePosts()
        ],
      ),
    );
  }
}
