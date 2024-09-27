import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenismenanagement/ui/colors.dart';

class GetPrograms extends StatefulWidget {
  final String day;
  const GetPrograms({super.key, required this.day});

  @override
  _GetProgramsState createState() => _GetProgramsState();
}

class _GetProgramsState extends State<GetPrograms> {
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('programs').snapshots();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double widht = MediaQuery.sizeOf(context).width;
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
            Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            if (data['day'] == widget.day && data['isEmpty'] == true) {
              return SizedBox(
                height: height * 0.15,
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
                      child: Container(
                        width: widht*0.95,
                        height: height*0.1,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: CustomColors().appBarBackgroundColor.withOpacity(0.6),
                                spreadRadius: 4,
                                offset: const Offset(0, 1),
                              ),
                            ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: widht*0.4,
                              height: height*0.05,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.orange.withOpacity(1),
                                      spreadRadius: 7,
                                      offset: const Offset(0, 1),
                                    ),
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 3,top: 10),
                                child: Text('Hour:'+ data['hour'],style: GoogleFonts.titilliumWeb(fontSize:17,fontWeight: FontWeight.bold,color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              width: widht*0.25,
                              height: height*0.055,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: CustomColors().appBarBackgroundColor.withOpacity(0.4),
                                      spreadRadius: 4,
                                      offset: const Offset(0, 1),
                                    ),
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 9,top: 13),
                                child: Text("Avaible",style: GoogleFonts.titilliumWeb(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const SizedBox();
            }
          }).toList(),
        );
      },
    );
  }
}