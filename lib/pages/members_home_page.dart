import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tenismenanagement/pages/add_rezervation_page.dart';
import 'package:tenismenanagement/pages/announcement_page.dart';
import 'package:tenismenanagement/pages/coaches_page.dart';
import 'package:tenismenanagement/pages/members_intro_page.dart';
import 'package:tenismenanagement/pages/members_login_page.dart';
import 'package:tenismenanagement/pages/offers_page.dart';
import 'package:tenismenanagement/pages/programs_page.dart';
import 'package:tenismenanagement/pages/settings_page.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/theme/theme.dart';
import 'package:tenismenanagement/theme/theme_provider.dart';
import 'package:tenismenanagement/ui/colors.dart';
import 'package:tenismenanagement/widgets/custom_card_widget.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class MembersHomePage extends StatefulWidget {
  const MembersHomePage({super.key});

  @override
  State<MembersHomePage> createState() => _MembersHomePageState();
}

class _MembersHomePageState extends State<MembersHomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final widht = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const _customDrawerWidget(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: CustomAppBar(
            title: "Welcome",
            subtitle: FirebaseAuth.instance.currentUser!.displayName == null
                ? "${FirebaseAuth.instance.currentUser!.email}"
                : "${FirebaseAuth.instance.currentUser!.displayName}",
            textSize: 55,
          )),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: customCardWidget(
                          cardText: "Coaches", photoURl: "assets/coaches.png"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CoachesPage()));
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: customCardWidget(
                          cardText: "Rezervation",
                          photoURl: "assets/reservation.png"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AddRezRequestPage()));
                      },
                    ),
                    InkWell(
                      child: customCardWidget(
                          cardText: "Program", photoURl: "assets/schedule.png"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProgramsPage()));
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: customCardWidget(
                          cardText: "Offers", photoURl: "assets/offers.png"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OffersPage()));
                      },
                    ),
                    InkWell(
                      child: customCardWidget(
                          cardText: "Announcement",
                          photoURl: "assets/notifications.png"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AnnouncementPage()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _customDrawerWidget extends StatelessWidget {
  const _customDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: ListView(
        // Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: CustomColors().drawerBackground,
            ),
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.cover,
            ),
          ),
          DrawerListTileWidget(
              icon: Icons.home_outlined,
              title: "Home",
              tap: () => {
                    /// Close Navigation drawer before
                    Navigator.pop(context),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MembersIntroPage()),
                    )
                  }),
          Divider(
            color: Theme.of(context).colorScheme.primary,
          ),
          DrawerListTileWidget(
              icon: Icons.notifications_outlined,
              title: "Notifications",
              tap: () => {
                    /// Close Navigation drawer before
                    Navigator.pop(context),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnnouncementPage()),
                    ),
                  }),
          DrawerListTileWidget(
              icon: Icons.settings,
              title: "Settings",
              tap: () => {
                /// Close Navigation drawer before
                Navigator.pop(context),
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsPage()),
                ),
              }),
          ListTile(
            leading: Provider.of<ThemeProvider>(context).themeData == lightMode
                ? const Icon(
              Icons.dark_mode,
              color: Colors.black,
              size: 26,
            )
                : Icon(
              Icons.light_mode,
              color: Theme.of(context).colorScheme.primary,
              size: 26,
            ),
            title: Provider.of<ThemeProvider>(context).themeData == lightMode
                ? const Text(
              'Dark Mode',
              style: TextStyle(fontSize: 19),
            )
                : const Text(
              'Light Mode',
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).changeTheme();
            },
          ),
          Divider(
            color: Theme.of(context).colorScheme.primary,
          ),
          ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: CustomColors().drawerBackground,
              size: 26,
            ),
            title: const Text(
              'Logout',
              style: TextStyle(color: Colors.redAccent, fontSize: 19),
            ),
            onTap: () {
              /// Close Navigation drawer before
              Navigator.pop(context);
              AuthService().signOut().then((value) => Navigator.of(context)
                  .pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (context) => const MembersLoginPage()),
                      (route) => false));
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTileWidget extends StatelessWidget {
  IconData icon;
  String title;
  Function tap;
  DrawerListTileWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.tap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: CustomColors().drawerBackground,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 19),
      ),
      onTap: () {
        tap();
      },
    );
  }
}
