import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenismenanagement/pages/add_feedback.dart';
import 'package:tenismenanagement/pages/add_rezervation_page.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class MemberActivityPage extends StatefulWidget {
  const MemberActivityPage({super.key});

  @override
  State<MemberActivityPage> createState() => _MemberActivityPageState();
}

class _MemberActivityPageState extends State<MemberActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: CustomAppBar(
            title: "Activity",
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
                      Image.asset("assets/reservation.png",height: 60,width: 60,),
                      Text("Submit Rezervation",style: GoogleFonts.titilliumWeb(fontSize:23,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.primary,),),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddRezRequestPage()));
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
                      Image.asset("assets/feedback.png",height: 60,width: 60,),
                      Text("Send a Feedback",style: GoogleFonts.titilliumWeb(fontSize:23,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.primary,),),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddFeedbackPage()));
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
