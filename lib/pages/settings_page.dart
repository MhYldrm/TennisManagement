import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tenismenanagement/pages/splash_screen.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/theme/theme.dart';
import 'package:tenismenanagement/theme/theme_provider.dart';
import 'package:tenismenanagement/ui/colors.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(250),
            child: CustomAppBar(
              title: "Settings",
              subtitle: "",
              textSize: 55,
            )),
        body: Column(
          children: [
            const SizedBox(height: 40,),
            ListTile(
              leading: Provider.of<ThemeProvider>(context).themeData == lightMode
                  ? const Icon(
                Icons.dark_mode,
                color: Colors.black,
                size: 35,
              )
                  : Icon(
                Icons.light_mode,
                color: Theme.of(context).colorScheme.primary,
                size: 35,
              ),
              subtitle: Provider.of<ThemeProvider>(context).themeData == lightMode
                  ? const Text(
                'Dark Mode',
                style: TextStyle(fontSize: 25),
              )
                  : const Text(
                'Light Mode',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .changeTheme();
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Divider(
                color: Theme.of(context).colorScheme.primary,
                thickness: 3,
              ),
            ),
            const SizedBox(height: 20,),
            ListTile(
              leading: Icon(
                Icons.contact_support_rounded,
                color: Provider.of<ThemeProvider>(context).themeData == lightMode
                    ? CustomColors().drawerBackground : Colors.white,
                size: 35,
              ),
              subtitle: const Text(
                'Contact Us',
                style: TextStyle(fontSize: 25),
              ),
              onTap: () {
                /// Close Navigation drawer before
                Navigator.pop(context);
                Navigator.pushNamed(context, "/clupinfopage");
              },
            ),
            const SizedBox(height: 20,),
            ListTile(
              leading: Icon(
                Icons.drive_file_rename_outline_outlined,
                color: Provider.of<ThemeProvider>(context).themeData == lightMode
                    ? CustomColors().drawerBackground : Colors.white,
                size: 35,
              ),
              subtitle: Text(
                'Send us Feedback',
                style: TextStyle(color: Provider.of<ThemeProvider>(context).themeData == lightMode
                    ? CustomColors().drawerBackground : Colors.white,fontSize: 25),
              ),
              onTap: () {
                /// Close Navigation drawer before
                Navigator.pop(context);
                Navigator.pushNamed(context, "/sendfeedbackpage");
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Divider(
                color: Theme.of(context).colorScheme.primary,
                thickness: 3,
              ),
            ),
            const SizedBox(height: 20,),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Provider.of<ThemeProvider>(context).themeData == lightMode ? CustomColors().textFieldFormHintColor : Colors.yellow,
                size: 35,
              ),
              subtitle: const Text(
                'Logout',
                style: TextStyle(color: Colors.redAccent, fontSize: 25),
              ),
              onTap: () {
                /// Close Navigation drawer before
                Navigator.pop(context);
                AuthService().signOut().then((value) => Navigator.of(context)
                    .pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const SplashScreen()),
                        (route) => false));
              },
            ),
          ],
        ),
      );
    }
  }
