import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tenismenanagement/pages/announcement_page.dart';
import 'package:tenismenanagement/pages/coaches_page.dart';
import 'package:tenismenanagement/pages/intro_page.dart';
import 'package:tenismenanagement/pages/login_page.dart';
import 'package:tenismenanagement/pages/members_page.dart';
import 'package:tenismenanagement/pages/offers_page.dart';
import 'package:tenismenanagement/pages/programs_page.dart';
import 'package:tenismenanagement/pages/schedule_page.dart';
import 'package:tenismenanagement/pages/settings_page.dart';
import 'package:tenismenanagement/pages/show_request_page.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/theme/theme.dart';
import 'package:tenismenanagement/theme/theme_provider.dart';
import 'package:tenismenanagement/ui/colors.dart';
import 'package:tenismenanagement/widgets/custom_card_widget.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final widht = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const _customHomePageDrawer(),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(250),
          child: CustomAppBar(
            title: "Welcome",
            subtitle: FirebaseAuth.instance.currentUser!.displayName == null
                ? "${FirebaseAuth.instance.currentUser!.email}"
                : "${FirebaseAuth.instance.currentUser!.displayName}",
            textSize: 55,
          )),
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.landscape) {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight,
          ]);
        } else {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
        }
        return Column(
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
                            cardText: "Members",
                            photoURl: "assets/members.png"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MembersPage()));
                        },
                      ),
                      InkWell(
                        child: customCardWidget(
                            cardText: "Schedule",
                            photoURl: "assets/coaches.png"),
                        onTap: () {
                          Navigator.push(context, PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => SchedulePage(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                return child;}
                          ),
                          ).then((value){
                            SystemChrome.setPreferredOrientations([
                              DeviceOrientation.portraitUp,
                              DeviceOrientation.portraitDown,
                            ]);
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: customCardWidget(
                            cardText: "Requests",
                            photoURl: "assets/reservation.png"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const ShowRequestsPage()));
                        },
                      ),
                      InkWell(
                        child: customCardWidget(
                            cardText: "Rezervation",
                            photoURl: "assets/schedule.png"),
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
        );
      }),
    );
  }
}

class _customHomePageDrawer extends StatelessWidget {
  const _customHomePageDrawer({
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
                          builder: (context) => const IntroPage()),
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
              icon: Icons.account_circle,
              title: "Coaches",
              tap: () => {
                /// Close Navigation drawer before
                Navigator.pop(context),
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CoachesPage()),
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
            leading:
            Provider.of<ThemeProvider>(context).themeData == lightMode
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
              Provider.of<ThemeProvider>(context, listen: false)
                  .changeTheme();
            },
          ),
          Divider(
            color: Theme.of(context).colorScheme.primary,
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
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
                      builder: (context) => const CoachesLoginPage()),
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
