import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tenismenanagement/pages/add_feedback.dart';
import 'package:tenismenanagement/pages/clup_info_page.dart';
import 'package:tenismenanagement/pages/homepage.dart';
import 'package:tenismenanagement/pages/login_page.dart';
import 'package:tenismenanagement/pages/members_page.dart';
import 'package:tenismenanagement/pages/programs_page.dart';
import 'package:tenismenanagement/pages/signup_page.dart';
import 'package:tenismenanagement/pages/splash_screen.dart';
import 'package:tenismenanagement/theme/theme_provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown,]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(create: (context) => ThemeProvider(),child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tennis Board',
      debugShowCheckedModeBanner: false,
      routes: {
        '/loginpage': (context) => const CoachesLoginPage(),
        '/signuppage': (context) => const SignUpPage(),
        '/homepage': (context) => const HomePage(),
        '/memberspage': (context) => const MembersPage(),
        '/splashpage' : (context) => const SplashScreen(),
        '/programspage': (context) => const ProgramsPage(),
        '/clupinfopage': (context) => const ClupInfoPage(),
        '/sendfeedbackpage': (context) => const AddFeedbackPage(),
      },
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const SplashScreen(),
    );
  }
}
