import 'package:flutter/material.dart';
import 'package:tenismenanagement/pages/add_member_page.dart';
import 'package:tenismenanagement/pages/homepage.dart';
import 'package:tenismenanagement/pages/member_activity_page.dart';
import 'package:tenismenanagement/pages/profile_page.dart';
import 'package:tenismenanagement/pages/save_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomePage(),
    const SavePage(),
    const MemberActivityPage(),
    const ProfilePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
          elevation: 10,
          backgroundColor: Colors.white,
          child: const Icon(Icons.ac_unit_rounded,size: 50,color: Colors.black,),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AddMemberPage()));
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
                        currentScreen =const HomePage();
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
                            fontSize: 12,
                            color: currentTab == 0 ? Theme.of(context).colorScheme.secondary : Colors.black26,
                        ),),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen =const SavePage();
                        currentTab= 1;});
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,size: 25,
                          color: currentTab == 1 ? Theme.of(context).colorScheme.secondary : Colors.black26,
                        ),
                        Text("Add",style: TextStyle(
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
                        currentScreen =const MemberActivityPage();
                        currentTab= 2;});
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.pending_actions,size: 25,
                          color: currentTab == 2 ? Theme.of(context).colorScheme.secondary : Colors.black26,
                        ),
                        Text("Activity",style: TextStyle(
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
                        currentScreen =const ProfilePage();
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
