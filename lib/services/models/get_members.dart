import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/services/methods/custom_functions.dart';
import 'package:tenismenanagement/ui/colors.dart';

class GetMembers extends StatefulWidget {
  @override
  _GetMembersState createState() => _GetMembersState();
}

class _GetMembersState extends State<GetMembers> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('members').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return Padding(
              padding: const EdgeInsets.only(left: 20,),
              child: Slidable(
                key: UniqueKey(),
                endActionPane: ActionPane(motion: const ScrollMotion(),
                    extentRatio: 0.25,
                    children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            showDialog(context: context, builder: (context){
                              return AlertDialog(
                                title: Text("WARNING",style: TextStyle(fontWeight: FontWeight.bold,color:CustomColors().textFieldFormHintColor),),
                                content: Text("Are you sure delete ?\n =>  ${data['name']}"),
                                actions: [
                                  TextButton(onPressed: ()=> Navigator.pop(context), child: Text("Turn Back",style: TextStyle(color: Theme.of(context).colorScheme.primary,),)),
                                  TextButton(onPressed: (){
                                    AuthService().removeMembers(document.id);  // Provider ile üye silme işini ekleyeceğiz
                                    Navigator.pop(context);
                                  }, child: const Text("Delete",style: TextStyle(color: Colors.red),)),
                                ],
                              );
                            });
                          },
                          icon: const Icon(
                            Icons.delete,
                            size: 35,
                            color: Colors.red,
                          )),
                    ],
                  ),
                ]),
                child: SizedBox(
                  height: 150,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 9),
                        child: Container(
                          width: 350,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColors()
                                      .appBarBackgroundColor
                                      .withOpacity(0.6),
                                  spreadRadius: 4,
                                  offset: const Offset(0, 1),
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    CustomColors().appBarBackgroundColor,
                                child: data['gender'] == "male"
                                    ? Image.asset(
                                        "assets/man.png",
                                        height: 80,
                                        width: 100,
                                      )
                                    : Image.asset(
                                        "assets/women.png",
                                        height: 80,
                                        width: 100,
                                      ),
                              ),
                              SizedBox(
                                width: 190,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      data['name'],
                                      style: GoogleFonts.kanit(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Theme.of(context).primaryColorDark),
                                    ),
                                    Text(
                                      data['phoneNumber'],
                                      style: GoogleFonts.titilliumWeb(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Theme.of(context).primaryColorDark),
                                    ),
                                    Text(
                                      "Age: ${data['age']}",
                                      style: GoogleFonts.ptSerif(
                                          fontSize: 13,
                                          color:
                                              Theme.of(context).primaryColorDark),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    CustomFunctions(context: context).callUs(data['phoneNumber']);
                                  },
                                  icon: Icon(
                                    Icons.call_sharp,
                                    size: 28,
                                    color: Theme.of(context).colorScheme.primary,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
