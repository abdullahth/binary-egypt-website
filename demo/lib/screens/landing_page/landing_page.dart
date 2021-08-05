import 'package:demo/models/section.dart';
import 'package:demo/prefrences/enums/vectors.dart';
import 'package:flutter/material.dart';

import 'components/about_section_template/about_section.dart';
import 'components/main_screen/main_screen.dart';
import 'components/app_bar/app_bar.dart' as customAppBar;

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(
        children: [
          // AppBar
          customAppBar.AppBar(),
          // Main Page
          MainPage(),
          // About Sections
          AboutSection(
            section: Section("Section One", Vectors.vectorTwoBackground),
            leftImage: true,
            buttonTitle: "Learn More!",
            buttonOnPressed: () {},
          ),
          AboutSection(
              buttonTitle: "Visit Now!",
              buttonOnPressed: () {},
              section: Section("Section Two", Vectors.vectorThreeBackground),
              leftImage: false),
          AboutSection(
              buttonTitle: "Pick Quote!",
              buttonOnPressed: () {},
              section: Section("Section Three", Vectors.vectorFourBackground),
              leftImage: true),
          AboutSection(
              buttonTitle: "Courses",
              buttonOnPressed: () {},
              section: Section("Section Four", Vectors.vectorFiveBackground),
              leftImage: false),
          // Contact Page
          // Footer
        ],
      ),
    );
  }
}
