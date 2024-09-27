import 'package:flutter/material.dart';
import 'package:tenismenanagement/pages/login_page.dart';
import 'package:tenismenanagement/pages/members_login_page.dart';
import 'package:tenismenanagement/ui/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.sizeOf(context).height;
    double _widht = MediaQuery.sizeOf(context).width;
    String backgroundImageName = "assets/sport.jpg";
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors().splashbackground,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: _height / 1.5,
              width: _widht * 0.8,
              child: Image.asset(
                backgroundImageName,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: _height / 5,
              width: _widht * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left:_widht/3),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoachesLoginPage()));
                      },
                      style: _customElevatedButtonStyle(),
                      child: const Text(
                        "for Coaches",
                        style: TextStyle(fontSize: 20.5, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:_widht/3.5),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MembersLoginPage()));
                      },
                      style: _customElevatedButtonStyle(),
                      child: const Text(
                        "for Members",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ButtonStyle _customElevatedButtonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: CustomColors().appBarBackgroundColor,
      elevation: 5,
      shadowColor: Colors.white,
    );
  }
}
