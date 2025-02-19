import 'package:flutter/material.dart';
import 'package:travel_app/components/heading.dart';
import 'package:travel_app/components/label_section.dart';
import 'package:travel_app/components/top.dart';
import 'package:travel_app/utils/styles.dart';
import 'package:travel_app/components/search.dart';
import 'package:travel_app/components/recommended.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: medium, top: 50, right: medium),
        child: Column(
          children: [
            const HeadingSection(),
            SizedBox(
              height: medium,
            ),
            const searchSection(),
            SizedBox(
              height: medium,
            ),
            LabelSection(
              text: 'Recommended',
              style: heading1,
            ),
            SizedBox(
              height: medium,
            ),
            const Recommended(),
            SizedBox(
              height: medium,
            ),
            LabelSection(text: 'Top Destinations', style: heading2),
            SizedBox(
              height: medium,
            ),
            const Top(),
          ],
        ),
      )),
      bottomNavigationBar: SizedBox(
        height: 94,
        child: BottomNavigationBar(
            selectedItemColor: accent,
            unselectedItemColor: icon,
            elevation: 0,
            backgroundColor: white,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.explore,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  label: 'Favorites'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                  ),
                  label: 'Profile'),
            ]),
      ),
    );
  }
}
