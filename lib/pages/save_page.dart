import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenismenanagement/pages/add_announcement_page.dart';
import 'package:tenismenanagement/pages/add_programs_page.dart';
import 'package:tenismenanagement/pages/add_rezervation_page.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class SavePage extends StatefulWidget {
  const SavePage({super.key});

  @override
  State<SavePage> createState() => _SavePageState();
}

class _SavePageState extends State<SavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: CustomAppBar(
            title: "Welcome",
            subtitle: "",
            textSize: 55,
          )),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/schedule.png",height: 55,width: 55,),
                      Text("Add New Program",style: GoogleFonts.titilliumWeb(fontSize:23,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.primary,),),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddProgramsPage()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Divider(
                    color: Theme.of(context).colorScheme.primary,
                    thickness: 3,
                  ),
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/notifications.png",height: 50,width: 50,),
                      Text("Add Announcement",style: GoogleFonts.titilliumWeb(fontSize:23,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.primary,),),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddAnnouncementPage()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Divider(
                    color: Theme.of(context).colorScheme.primary,
                    thickness: 3,
                  ),
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/reservation.png",height: 50,width: 50,),
                      Text("Add Rezervations",style: GoogleFonts.titilliumWeb(fontSize:23,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.primary,),),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddRezRequestPage()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
