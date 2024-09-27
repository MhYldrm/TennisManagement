import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenismenanagement/pages/intro_page.dart';
import 'package:tenismenanagement/pages/members_intro_page.dart';
import 'package:tenismenanagement/pages/settings_page.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/widgets/custom_card_widget.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class MembersProfilePage extends StatefulWidget {
  const MembersProfilePage({super.key});

  @override
  State<MembersProfilePage> createState() => _MembersProfilePageState();
}

class _MembersProfilePageState extends State<MembersProfilePage> {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: CustomAppBar(
            title: "My Profile",
            subtitle: "",
            textSize: 45,
          )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const _addSizedBox(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Card(
                color: Colors.white,
                child: Container(
                    height: height / 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.grey.shade300,
                          child: FirebaseAuth.instance.currentUser!.photoURL ==
                              null
                              ? Image.asset(
                            "assets/man.png",
                            height: 65,
                            width: 65,
                          )
                              : Image.network(
                            "${FirebaseAuth.instance.currentUser!.photoURL}",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FirebaseAuth.instance.currentUser!
                                      .displayName == null
                                      ? "${FirebaseAuth.instance.currentUser!.email}"
                                      : "${FirebaseAuth.instance.currentUser!.displayName}",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColorDark,
                                      fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Welcome",
                                  style: GoogleFonts.pacifico(
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColorDark,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            const _addSizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: customCardWidget(
                      cardText: "Settings", photoURl: "assets/settings.png"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsPage()));
                  },
                ),
                InkWell(
                  child: customCardWidget(
                      cardText: "Homepage", photoURl: "assets/home.png"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MembersIntroPage()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _addSizedBox extends StatelessWidget {
  const _addSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 40,
    );
  }
}
