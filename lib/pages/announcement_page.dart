import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/services/models/get_announcement.dart';
import 'package:tenismenanagement/services/models/get_members.dart';
import 'package:tenismenanagement/ui/colors.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class AnnouncementPage extends StatefulWidget {
  const AnnouncementPage({super.key});

  @override
  State<AnnouncementPage> createState() => _AnnouncementPageState();
}

class _AnnouncementPageState extends State<AnnouncementPage> {

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    var widht = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        shadowColor: Theme.of(context).colorScheme.shadow,
        backgroundColor: Theme.of(context).colorScheme.primary,
        flexibleSpace: ClipRRect(
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(200)),
          child: Container(
            decoration: const BoxDecoration(),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(150),
              bottomRight: Radius.circular(350)),
        ),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(160),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 75, bottom: 80),
                      child: Column(
                        children: [
                          Text(
                            "Announcements",
                            style: GoogleFonts.pacifico(
                                fontSize: 45,fontWeight: FontWeight.bold,
                                color:Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            SizedBox(
              height: height*0.7,
              child: Center(
                child: GetAnnouncement(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


