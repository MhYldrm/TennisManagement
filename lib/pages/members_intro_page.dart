import 'package:flutter/material.dart';
import 'package:tenismenanagement/pages/add_rezervation_page.dart';
import 'package:tenismenanagement/pages/clup_info_page.dart';
import 'package:tenismenanagement/pages/member_activity_page.dart';
import 'package:tenismenanagement/pages/members_home_page.dart';
import 'package:tenismenanagement/pages/members_profile_page.dart';
import 'package:tenismenanagement/pages/profile_page.dart';


class MembersIntroPage extends StatefulWidget {
  const MembersIntroPage({super.key});

  @override
  State<MembersIntroPage> createState() => _MembersIntroPageState();
}

class _MembersIntroPageState extends State<MembersIntroPage> {
  int currentTab = 0;
  final List<Widget> screens = [
    const MembersHomePage(),
    const ClupInfoPage(),
    const MemberActivityPage(),
    const MembersProfilePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const MembersHomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
          elevation: 10,
          backgroundColor: Colors.white,
          child: const Icon(Icons.ac_unit_rounded,size: 50,color: Colors.black,),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AddRezRequestPage()));
          }
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shadowColor: Theme.of(context).colorScheme.shadow,
        elevation: 0,
        notchMargin: 17,
        color: Theme.of(context).colorScheme.primary,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen =const MembersHomePage();
                        currentTab= 0;});
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.dashboard_rounded,size: 25,
                          color: currentTab == 0 ? Theme.of(context).colorScheme.secondary : Colors.black26,
                        ),
                        Text("Homepage",style: TextStyle(
                            fontSize: 11,
                            color: currentTab == 0 ? Theme.of(context).colorScheme.secondary : Colors.black26,
                        ),),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen =const MemberActivityPage();
                        currentTab= 1;});
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.pending_actions,size: 25,
                          color: currentTab == 1 ? Theme.of(context).colorScheme.secondary : Colors.black26,
                        ),
                        Text("Activity",style: TextStyle(
                          fontSize: 12,
                          color: currentTab == 1 ? Theme.of(context).colorScheme.secondary : Colors.black26,
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen =const ClupInfoPage();
                        currentTab= 2;});
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.sports_tennis_rounded,size: 25,
                          color: currentTab == 2 ? Theme.of(context).colorScheme.secondary : Colors.black26,
                        ),
                        Text("About Us",style: TextStyle(
                          fontSize: 12,
                          color: currentTab == 2 ? Theme.of(context).colorScheme.secondary : Colors.black26,
                        ),),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen =const MembersProfilePage();
                        currentTab= 3;});
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,size: 25,
                          color: currentTab == 3 ? Theme.of(context).colorScheme.secondary : Colors.black26,
                        ),
                        Text("Profile",style: TextStyle(
                            fontSize: 12,
                            color: currentTab == 3 ? Theme.of(context).colorScheme.secondary : Colors.black26,
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
