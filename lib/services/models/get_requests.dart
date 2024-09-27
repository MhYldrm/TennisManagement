import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenismenanagement/ui/colors.dart';

class GetRequests extends StatefulWidget {
  @override
  _GetRequestsState createState() => _GetRequestsState();
}

class _GetRequestsState extends State<GetRequests> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('rezRequest').snapshots();

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
            double widht = MediaQuery.sizeOf(context).width;
            double height = MediaQuery.sizeOf(context).height;
            Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return SizedBox(
              height: 190,
              child: Column(
                children: [
                  Padding(
                    padding:  const EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: widht*0.92,
                      height: height*0.18,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: CustomColors().appBarBackgroundColor.withOpacity(0.6),
                              spreadRadius: 4,
                              offset: const Offset(0, 1),
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(data['info'],style: GoogleFonts.kanit(fontSize:18,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColorDark),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("- " + data['day'],style: GoogleFonts.titilliumWeb(fontSize:16,color: Theme.of(context).primaryColorDark),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("- " + data['hour'],style: GoogleFonts.titilliumWeb(fontSize:16,color: Theme.of(context).primaryColorDark),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Notes: " + data['notes'],style: GoogleFonts.titilliumWeb(fontSize:14,color: Theme.of(context).primaryColorDark),),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
