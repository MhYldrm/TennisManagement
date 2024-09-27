import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/ui/colors.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  TextEditingController h1 = TextEditingController();
  TextEditingController h2 = TextEditingController();
  TextEditingController h3 = TextEditingController();
  TextEditingController h4 = TextEditingController();
  TextEditingController h5 = TextEditingController();
  TextEditingController h6 = TextEditingController();
  TextEditingController h7 = TextEditingController();
  TextEditingController h8 = TextEditingController();
  TextEditingController h9 = TextEditingController();
  TextEditingController h10 = TextEditingController();
  TextEditingController h11 = TextEditingController();
  TextEditingController h1p1 = TextEditingController();
  TextEditingController h2p2 = TextEditingController();
  TextEditingController h3p3 = TextEditingController();
  TextEditingController h4p4 = TextEditingController();
  TextEditingController h5p5 = TextEditingController();
  TextEditingController h6p6 = TextEditingController();
  TextEditingController h7p7 = TextEditingController();
  TextEditingController h8p8 = TextEditingController();
  TextEditingController h9p9 = TextEditingController();
  TextEditingController h10p10 = TextEditingController();
  TextEditingController h11p11 = TextEditingController();
  TextEditingController h1s1 = TextEditingController();
  TextEditingController h2s2 = TextEditingController();
  TextEditingController h3s3 = TextEditingController();
  TextEditingController h4s4 = TextEditingController();
  TextEditingController h5s5 = TextEditingController();
  TextEditingController h6s6 = TextEditingController();
  TextEditingController h7s7 = TextEditingController();
  TextEditingController h8s8 = TextEditingController();
  TextEditingController h9s9 = TextEditingController();
  TextEditingController h10s10 = TextEditingController();
  TextEditingController h11s11 = TextEditingController();
  TextEditingController h1w1 = TextEditingController();
  TextEditingController h2w2 = TextEditingController();
  TextEditingController h3w3 = TextEditingController();
  TextEditingController h4w4 = TextEditingController();
  TextEditingController h5w5 = TextEditingController();
  TextEditingController h6w6 = TextEditingController();
  TextEditingController h7w7 = TextEditingController();
  TextEditingController h8w8 = TextEditingController();
  TextEditingController h9w9 = TextEditingController();
  TextEditingController h10w10 = TextEditingController();
  TextEditingController h11w11 = TextEditingController();
  TextEditingController h1t1 = TextEditingController();
  TextEditingController h2t2 = TextEditingController();
  TextEditingController h3t3 = TextEditingController();
  TextEditingController h4t4 = TextEditingController();
  TextEditingController h5t5 = TextEditingController();
  TextEditingController h6t6 = TextEditingController();
  TextEditingController h7t7 = TextEditingController();
  TextEditingController h8t8 = TextEditingController();
  TextEditingController h9t9 = TextEditingController();
  TextEditingController h10t10 = TextEditingController();
  TextEditingController h11t11 = TextEditingController();
  TextEditingController h1f1 = TextEditingController();
  TextEditingController h2f2 = TextEditingController();
  TextEditingController h3f3 = TextEditingController();
  TextEditingController h4f4 = TextEditingController();
  TextEditingController h5f5 = TextEditingController();
  TextEditingController h6f6 = TextEditingController();
  TextEditingController h7f7 = TextEditingController();
  TextEditingController h8f8 = TextEditingController();
  TextEditingController h9f9 = TextEditingController();
  TextEditingController h10f10 = TextEditingController();
  TextEditingController h11f11 = TextEditingController();
  TextEditingController h1sat1 = TextEditingController();
  TextEditingController h2sat2 = TextEditingController();
  TextEditingController h3sat3 = TextEditingController();
  TextEditingController h4sat4 = TextEditingController();
  TextEditingController h5sat5 = TextEditingController();
  TextEditingController h6sat6 = TextEditingController();
  TextEditingController h7sat7 = TextEditingController();
  TextEditingController h8sat8 = TextEditingController();
  TextEditingController h9sat9 = TextEditingController();
  TextEditingController h10sat10 = TextEditingController();
  TextEditingController h11sat11 = TextEditingController();
  TextEditingController h1sun1 = TextEditingController();
  TextEditingController h2sun2 = TextEditingController();
  TextEditingController h3sun3 = TextEditingController();
  TextEditingController h4sun4 = TextEditingController();
  TextEditingController h5sun5 = TextEditingController();
  TextEditingController h6sun6 = TextEditingController();
  TextEditingController h7sun7 = TextEditingController();
  TextEditingController h8sun8 = TextEditingController();
  TextEditingController h9sun9 = TextEditingController();
  TextEditingController h10sun10 = TextEditingController();
  TextEditingController h11sun11 = TextEditingController();
  TextEditingController ah1 = TextEditingController();
  TextEditingController ah2 = TextEditingController();
  TextEditingController ah3 = TextEditingController();
  TextEditingController ah4 = TextEditingController();
  TextEditingController ah5 = TextEditingController();
  TextEditingController ah6 = TextEditingController();
  TextEditingController ah7 = TextEditingController();
  TextEditingController ah8 = TextEditingController();
  TextEditingController ah1p1 = TextEditingController();
  TextEditingController ah2p2 = TextEditingController();
  TextEditingController ah3p3 = TextEditingController();
  TextEditingController ah4p4 = TextEditingController();
  TextEditingController ah5p5 = TextEditingController();
  TextEditingController ah6p6 = TextEditingController();
  TextEditingController ah7p7 = TextEditingController();
  TextEditingController ah8p8 = TextEditingController();
  TextEditingController ah1s1 = TextEditingController();
  TextEditingController ah2s2 = TextEditingController();
  TextEditingController ah3s3 = TextEditingController();
  TextEditingController ah4s4 = TextEditingController();
  TextEditingController ah5s5 = TextEditingController();
  TextEditingController ah6s6 = TextEditingController();
  TextEditingController ah7s7 = TextEditingController();
  TextEditingController ah8s8 = TextEditingController();
  TextEditingController ah1w1 = TextEditingController();
  TextEditingController ah2w2 = TextEditingController();
  TextEditingController ah3w3 = TextEditingController();
  TextEditingController ah4w4 = TextEditingController();
  TextEditingController ah5w5 = TextEditingController();
  TextEditingController ah6w6 = TextEditingController();
  TextEditingController ah7w7 = TextEditingController();
  TextEditingController ah8w8 = TextEditingController();
  TextEditingController ah1t1 = TextEditingController();
  TextEditingController ah2t2 = TextEditingController();
  TextEditingController ah3t3 = TextEditingController();
  TextEditingController ah4t4 = TextEditingController();
  TextEditingController ah5t5 = TextEditingController();
  TextEditingController ah6t6 = TextEditingController();
  TextEditingController ah7t7 = TextEditingController();
  TextEditingController ah8t8 = TextEditingController();
  TextEditingController ah1f1 = TextEditingController();
  TextEditingController ah2f2 = TextEditingController();
  TextEditingController ah3f3 = TextEditingController();
  TextEditingController ah4f4 = TextEditingController();
  TextEditingController ah5f5 = TextEditingController();
  TextEditingController ah6f6 = TextEditingController();
  TextEditingController ah7f7 = TextEditingController();
  TextEditingController ah8f8 = TextEditingController();
  TextEditingController ah1sat1 = TextEditingController();
  TextEditingController ah2sat2 = TextEditingController();
  TextEditingController ah3sat3 = TextEditingController();
  TextEditingController ah4sat4 = TextEditingController();
  TextEditingController ah5sat5 = TextEditingController();
  TextEditingController ah6sat6 = TextEditingController();
  TextEditingController ah7sat7 = TextEditingController();
  TextEditingController ah8sat8 = TextEditingController();
  TextEditingController ah1sun1 = TextEditingController();
  TextEditingController ah2sun2 = TextEditingController();
  TextEditingController ah3sun3 = TextEditingController();
  TextEditingController ah4sun4 = TextEditingController();
  TextEditingController ah5sun5 = TextEditingController();
  TextEditingController ah6sun6 = TextEditingController();
  TextEditingController ah7sun7 = TextEditingController();
  TextEditingController ah8sun8 = TextEditingController();

  List allSchedule = [];

  getSchedule() async {
    var data = await FirebaseFirestore.instance.collection("schdule").orderBy("h1").get();
    setState(() {
      allSchedule = data.docs;
    });
  }

  @override
  void initState() {
    getSchedule();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      ]);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: (){
              // çıktı almak için pdf  oluştur
               }, icon: Icon(Icons.print,size: 30,)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: height*0.7,
              width: 900,
              child: ListView.builder(
                itemCount: allSchedule.length,
                  itemBuilder: (context, indeks){
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Table(
                          border: TableBorder.all(),
                          children: [
                            const TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Üst\nKORT"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Pazartesi"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Salı"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Çarşamba"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Perşembe"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Cuma"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Cumartesi"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Pazar"),
                                  ),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                        child: Text(allSchedule[indeks]['h1']),
                                      onTap: (){
                                          h1.text = allSchedule[indeks]['h1'];
                                          editScheduleInfo(allSchedule[indeks]['h1']);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                        child: Text(allSchedule[indeks]['h1p1']),
                                      onTap: () async {
                                          h1p1.text = allSchedule[indeks]['h1p1'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: h1p1,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'h1p1' : h1p1.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                        child: Text(allSchedule[indeks]['h1s1']),
                                      onTap: () async {
                                        h1s1.text = allSchedule[indeks]['h1s1'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h1s1,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h1s1' : h1s1.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h1w1']),
                                      onTap: () async {
                                        h1w1.text = allSchedule[indeks]['h1w1'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h1w1,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h1w1' : h1w1.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h1t1']),
                                      onTap: () async {
                                        h1t1.text = allSchedule[indeks]['h1t1'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h1t1,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h1t1' : h1t1.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h1f1']),
                                      onTap: () async {
                                        h1f1.text = allSchedule[indeks]['h1f1'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h1t1,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h1f1' : h1f1.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h1sat1']),
                                      onTap: () async {
                                        h1sat1.text = allSchedule[indeks]['h1sat1'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h1sat1,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h1sat1' : h1sat1.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h1sun1']),
                                      onTap: () async {
                                        h1sun1.text = allSchedule[indeks]['h1sun1'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h1sun1,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h1sun1' : h1sun1.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                        onTap: () async {
                                          h2.text = allSchedule[indeks]['h2'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: h2,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'h2' : h2.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                        child: Text(allSchedule[indeks]['h2'])),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h2p2']),
                                      onTap: () async {
                                        h2p2.text = allSchedule[indeks]['h2p2'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h2p2,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h2p2' : h2p2.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h2s2']),
                                      onTap: () async {
                                        h2s2.text = allSchedule[indeks]['h2s2'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h2s2,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h2s2' : h2s2.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h2w2']),
                                      onTap: () async {
                                        h2w2.text = allSchedule[indeks]['h2w2'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h2w2,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h2w2' : h2w2.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h2t2']),
                                      onTap: () async {
                                        h2t2.text = allSchedule[indeks]['h2t2'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h2t2,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h2t2' : h2t2.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h2f2']),
                                      onTap: () async {
                                        h2f2.text = allSchedule[indeks]['h2f2'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h2f2,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h2f2' : h2f2.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h2sat2']),
                                      onTap: () async {
                                        h2sat2.text = allSchedule[indeks]['h2sat2'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h2sat2,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h2sat2' : h2sat2.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h2sun2']),
                                      onTap: () async {
                                        h2sun2.text = allSchedule[indeks]['h2sun2'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h2sun2,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h2sun2' : h2sun2.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h3']),
                                      onTap: () async {
                                        h3.text = allSchedule[indeks]['h3'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h3,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h3' : h3.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h3p3']),
                                      onTap: () async {
                                        h3p3.text = allSchedule[indeks]['h3p3'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h3p3,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h3p3' : h3p3.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h3s3']),
                                      onTap: () async {
                                        h3s3.text = allSchedule[indeks]['h3s3'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h3s3,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h3s3' : h3s3.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h3w3']),
                                      onTap: () async {
                                        h3w3.text = allSchedule[indeks]['h3w3'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h3w3,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h3w3' : h3w3.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h3t3']),
                                      onTap: () async {
                                        h3t3.text = allSchedule[indeks]['h3t3'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h3t3,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h3t3' : h3t3.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h3f3']),
                                      onTap: () async {
                                        h3f3.text = allSchedule[indeks]['h3f3'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h3f3,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h3f3' : h3f3.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h3sat3']),
                                      onTap: () async {
                                        h3sat3.text = allSchedule[indeks]['h3sat3'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h3sat3,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h3sat3' : h3sat3.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h3sun3']),
                                      onTap: () async {
                                        h3sun3.text = allSchedule[indeks]['h3sun3'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h3sun3,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h3sun3' : h3sun3.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h4']),
                                      onTap: () async {
                                        h4.text = allSchedule[indeks]['h4'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h4,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h4' : h4.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h4p4']),
                                      onTap: () async {
                                        h4p4.text = allSchedule[indeks]['h4p4'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h4p4,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h4p4' : h4p4.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h4s4']),
                                      onTap: () async {
                                        h4s4.text = allSchedule[indeks]['h4s4'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h4s4,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h4s4' : h4s4.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h4w4']),
                                      onTap: () async {
                                        h4w4.text = allSchedule[indeks]['h4w4'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h4w4,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h4w4' : h4w4.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h4t4']),
                                      onTap: () async {
                                        h4t4.text = allSchedule[indeks]['h4t4'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h4t4,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h4t4' : h4t4.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h4f4']),
                                      onTap: () async {
                                        h4f4.text = allSchedule[indeks]['h4f4'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h4f4,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h4f4' : h4f4.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h4sat4']),
                                      onTap: () async {
                                        h4sat4.text = allSchedule[indeks]['h4sat4'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h4sat4,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h4sat4' : h4sat4.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h4sun4']),
                                      onTap: () async {
                                        h4sun4.text = allSchedule[indeks]['h4sun4'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h4sun4,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h4sun4' : h4sun4.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h5']),
                                      onTap: () async {
                                        h5.text = allSchedule[indeks]['h5'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h5,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h5' : h5.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h5p5']),
                                      onTap: () async {
                                        h5p5.text = allSchedule[indeks]['h5p5'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h5p5,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h5p5' : h5p5.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h5s5']),
                                      onTap: () async {
                                        h5s5.text = allSchedule[indeks]['h5s5'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h5s5,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h5s5' : h5s5.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h5w5']),
                                      onTap: () async {
                                        h5w5.text = allSchedule[indeks]['h5w5'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h5w5,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h5w5' : h5w5.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h5t5']),
                                      onTap: () async {
                                        h5t5.text = allSchedule[indeks]['h5t5'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h5t5,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h5t5' : h5t5.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h5f5']),
                                      onTap: () async {
                                        h5f5.text = allSchedule[indeks]['h5f5'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h5f5,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h5f5' : h5f5.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h5sat5']),
                                      onTap: () async {
                                        h5sat5.text = allSchedule[indeks]['h5sat5'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h5sat5,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h5sat5' : h5sat5.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h5sun5']),
                                      onTap: () async {
                                        h5sun5.text = allSchedule[indeks]['h5sun5'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h5sun5,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h5sun5' : h5sun5.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h6']),
                                      onTap: () async {
                                        h6.text = allSchedule[indeks]['h6'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h6,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h6' : h6.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h6p6']),
                                      onTap: () async {
                                        h6p6.text = allSchedule[indeks]['h6p6'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h6p6,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h6p6' : h6p6.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h6s6']),
                                      onTap: () async {
                                        h6s6.text = allSchedule[indeks]['h6s6'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h6s6,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h6s6' : h6s6.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h6w6']),
                                      onTap: () async {
                                        h6w6.text = allSchedule[indeks]['h6w6'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h6w6,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h6w6' : h6w6.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h6t6']),
                                      onTap: () async {
                                        h6t6.text = allSchedule[indeks]['h6t6'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h6t6,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h6t6' : h6t6.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h6f6']),
                                      onTap: () async {
                                        h6f6.text = allSchedule[indeks]['h6f6'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h6f6,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h6f6' : h6f6.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h6sat6']),
                                      onTap: () async {
                                        h6sat6.text = allSchedule[indeks]['h6sat6'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h6sat6,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h6sat6' : h6sat6.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h6sun6']),
                                      onTap: () async {
                                        h6sun6.text = allSchedule[indeks]['h6sun6'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h6sun6,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h6sun6' : h6sun6.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h7']),
                                      onTap: () async {
                                        h7.text = allSchedule[indeks]['h7'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h7,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h7' : h7.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h7p7']),
                                      onTap: () async {
                                        h7p7.text = allSchedule[indeks]['h7p7'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h7p7,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h7p7' : h7p7.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h7s7']),
                                      onTap: () async {
                                        h7s7.text = allSchedule[indeks]['h7s7'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h7s7,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h7s7' : h7s7.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h7w7']),
                                      onTap: () async {
                                        h7w7.text = allSchedule[indeks]['h7w7'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h7w7,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h7w7' : h7w7.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h7t7']),
                                      onTap: () async {
                                        h7t7.text = allSchedule[indeks]['h7t7'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h7t7,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h7t7' : h7t7.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h7f7']),
                                      onTap: () async {
                                        h7f7.text = allSchedule[indeks]['h7f7'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h7f7,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h7f7' : h7f7.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h7sat7']),
                                      onTap: () async {
                                        h7sat7.text = allSchedule[indeks]['h7sat7'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h7sat7,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h7sat7' : h7sat7.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h7sun7']),
                                      onTap: () async {
                                        h7sun7.text = allSchedule[indeks]['h7sun7'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h7sun7,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h7sun7' : h7sun7.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h8']),
                                      onTap: () async {
                                        h8.text = allSchedule[indeks]['h8'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h8,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h8' : h8.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h8p8']),
                                      onTap: () async {
                                        h8p8.text = allSchedule[indeks]['h8p8'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h8p8,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h8p8' : h8p8.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h8s8']),
                                      onTap: () async {
                                        h8s8.text = allSchedule[indeks]['h8s8'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h8s8,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h8s8' : h8s8.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h8w8']),
                                      onTap: () async {
                                        h8w8.text = allSchedule[indeks]['h8w8'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h8w8,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h8w8' : h8w8.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h8t8']),
                                      onTap: () async {
                                        h8t8.text = allSchedule[indeks]['h8t8'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h8t8,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h8t8' : h8t8.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h8f8']),
                                      onTap: () async {
                                        h8f8.text = allSchedule[indeks]['h8f8'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h8f8,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h8f8' : h8f8.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h8sat8']),
                                      onTap: () async {
                                        h8sat8.text = allSchedule[indeks]['h8sat8'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h8sat8,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h8sat8' : h8sat8.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h8sun8']),
                                      onTap: () async {
                                        h8sun8.text = allSchedule[indeks]['h8sun8'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h8sun8,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h8sun8' : h8sun8.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h9']),
                                      onTap: () async {
                                        h9.text = allSchedule[indeks]['h9'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h9,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h9' : h9.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h9p9']),
                                      onTap: () async {
                                        h9p9.text = allSchedule[indeks]['h9p9'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h9p9,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h9p9' : h9p9.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h9s9']),
                                      onTap: () async {
                                        h9s9.text = allSchedule[indeks]['h9s9'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h9s9,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h9s9' : h9s9.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h9w9']),
                                      onTap: () async {
                                        h9w9.text = allSchedule[indeks]['h9w9'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h9w9,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h9w9' : h9w9.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h9t9']),
                                      onTap: () async {
                                        h9t9.text = allSchedule[indeks]['h9t9'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h9t9,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h9t9' : h9t9.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h9f9']),
                                      onTap: () async {
                                        h9f9.text = allSchedule[indeks]['h9f9'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h9f9,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h9f9' : h9f9.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h9sat9']),
                                      onTap: () async {
                                        h9sat9.text = allSchedule[indeks]['h9sat9'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h9sat9,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h9sat9' : h9sat9.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h9sun9']),
                                      onTap: () async {
                                        h9sun9.text = allSchedule[indeks]['h9sun9'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h9sun9,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h9sun9' : h9sun9.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h10']),
                                      onTap: () async {
                                        h10.text = allSchedule[indeks]['h10'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h10,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h10' : h10.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h10p10']),
                                      onTap: () async {
                                        h10p10.text = allSchedule[indeks]['h10p10'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h10p10,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h10p10' : h10p10.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h10s10']),
                                      onTap: () async {
                                        h10s10.text = allSchedule[indeks]['h10s10'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h10s10,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h10s10' : h10s10.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h10w10']),
                                      onTap: () async {
                                        h10w10.text = allSchedule[indeks]['h10w10'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h10w10,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h10w10' : h10w10.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h10t10']),
                                      onTap: () async {
                                        h10t10.text = allSchedule[indeks]['h10t10'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h10t10,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h10t10' : h10t10.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h10f10']),
                                      onTap: () async {
                                        h10f10.text = allSchedule[indeks]['h10f10'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h10f10,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h10f10' : h10f10.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h10sat10']),
                                      onTap: () async {
                                        h10sat10.text = allSchedule[indeks]['h10sat10'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h10sat10,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h10sat10' : h10sat10.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h10sun10']),
                                      onTap: () async {
                                        h10sun10.text = allSchedule[indeks]['h10sun10'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h10sun10,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h10sun10' : h10sun10.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ]
                            ),
                            TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h11']),
                                      onTap: () async {
                                        h11.text = allSchedule[indeks]['h11'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h11,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h11' : h11.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h11p11']),
                                      onTap: () async {
                                        h11p11.text = allSchedule[indeks]['h11p11'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h11p11,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h11p11' : h11p11.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h11s11']),
                                      onTap: () async {
                                        h11s11.text = allSchedule[indeks]['h11s11'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h11s11,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h11s11' : h11s11.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h11w11']),
                                      onTap: () async {
                                        h11w11.text = allSchedule[indeks]['h11w11'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h11w11,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h11w11' : h11w11.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h11t11']),
                                      onTap: () async {
                                        h11t11.text = allSchedule[indeks]['h11t11'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h11t11,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h11t11' : h11t11.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h11f11']),
                                      onTap: () async {
                                        h11f11.text = allSchedule[indeks]['h11f11'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h11f11,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h11f11' : h11f11.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h11sat11']),
                                      onTap: () async {
                                        h11sat11.text = allSchedule[indeks]['h11sat11'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h11sat11,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h11sat11' : h11sat11.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(child: Text(allSchedule[indeks]['h11sun11']),
                                      onTap: () async {
                                        h11sun11.text = allSchedule[indeks]['h11sun11'];
                                        showDialog(context: context,
                                          builder: (context)=> AlertDialog(
                                            scrollable: true,
                                            title: Row(children: [
                                              GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                              SizedBox(width: 20,),
                                              Text("Edit Details",style: GoogleFonts.pacifico(
                                                fontSize: 20,fontWeight: FontWeight.bold,
                                                color:Theme.of(context).colorScheme.primary,),),],),
                                            content: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Members"),
                                                      TextField(
                                                          controller: h11sun11,
                                                          decoration: InputDecoration(
                                                              isDense: true,
                                                              contentPadding: EdgeInsets.all(8),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: const BorderSide(color: Colors.grey)),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(30),
                                                                  borderSide: BorderSide(color: CustomColors().color3)))
                                                      ),
                                                      SizedBox(height: 8,),
                                                      Center(child: ElevatedButton(onPressed: () async {
                                                        Map<String,dynamic> uptadeInfo ={
                                                          'h11sun11' : h11sun11.text,
                                                        };
                                                        await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                          Navigator.pop(context);
                                                          getSchedule();
                                                        });
                                                      },
                                                          style: _buildButtonStyle(context),
                                                          child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                    ],),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ]
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                  }
              ),
            ),
            SizedBox(height: 50,),
            Container(
              height: height*0.7,
              width: 900,
              child: ListView.builder(
                  itemCount: allSchedule.length,
                  itemBuilder: (context, indeks){
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Table(
                            border: TableBorder.all(),
                            children: [
                              const TableRow(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("Alt\nKORT"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("Pazartesi"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("Salı"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("Çarşamba"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("Perşembe"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("Cuma"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("Cumartesi"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("Pazar"),
                                    ),
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        child: Text(allSchedule[indeks]['ah1']),
                                        onTap: (){
                                          h1.text = allSchedule[indeks]['ah1'];
                                          editScheduleInfo(allSchedule[indeks]['ah1']);
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        child: Text(allSchedule[indeks]['ah1p1']),
                                        onTap: () async {
                                          ah1p1.text = allSchedule[indeks]['ah1p1'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah1p1,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah1p1' : ah1p1.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        child: Text(allSchedule[indeks]['ah1s1']),
                                        onTap: () async {
                                          ah1s1.text = allSchedule[indeks]['ah1s1'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah1s1,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah1s1' : ah1s1.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah1w1']),
                                        onTap: () async {
                                          ah1w1.text = allSchedule[indeks]['ah1w1'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah1w1,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah1w1' : ah1w1.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah1t1']),
                                        onTap: () async {
                                          ah1t1.text = allSchedule[indeks]['ah1t1'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah1t1,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah1t1' : ah1t1.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah1f1']),
                                        onTap: () async {
                                          ah1f1.text = allSchedule[indeks]['ah1f1'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah1t1,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah1f1' : ah1f1.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah1sat1']),
                                        onTap: () async {
                                          ah1sat1.text = allSchedule[indeks]['ah1sat1'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah1sat1,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah1sat1' : ah1sat1.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah1sun1']),
                                        onTap: () async {
                                          ah1sun1.text = allSchedule[indeks]['ah1sun1'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah1sun1,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah1sun1' : ah1sun1.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                          onTap: () async {
                                            ah2.text = allSchedule[indeks]['ah2'];
                                            showDialog(context: context,
                                              builder: (context)=> AlertDialog(
                                                scrollable: true,
                                                title: Row(children: [
                                                  GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                  SizedBox(width: 20,),
                                                  Text("Edit Details",style: GoogleFonts.pacifico(
                                                    fontSize: 20,fontWeight: FontWeight.bold,
                                                    color:Theme.of(context).colorScheme.primary,),),],),
                                                content: Container(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text("Members"),
                                                          TextField(
                                                              controller: ah2,
                                                              decoration: InputDecoration(
                                                                  isDense: true,
                                                                  contentPadding: EdgeInsets.all(8),
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderRadius: BorderRadius.circular(30),
                                                                      borderSide: const BorderSide(color: Colors.grey)),
                                                                  focusedBorder: OutlineInputBorder(
                                                                      borderRadius: BorderRadius.circular(30),
                                                                      borderSide: BorderSide(color: CustomColors().color3)))
                                                          ),
                                                          SizedBox(height: 8,),
                                                          Center(child: ElevatedButton(onPressed: () async {
                                                            Map<String,dynamic> uptadeInfo ={
                                                              'ah2' : ah2.text,
                                                            };
                                                            await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                              Navigator.pop(context);
                                                              getSchedule();
                                                            });
                                                          },
                                                              style: _buildButtonStyle(context),
                                                              child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                        ],),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(allSchedule[indeks]['ah2'])),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah2p2']),
                                        onTap: () async {
                                          ah2p2.text = allSchedule[indeks]['ah2p2'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah2p2,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah2p2' : ah2p2.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah2s2']),
                                        onTap: () async {
                                          ah2s2.text = allSchedule[indeks]['h2s2'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah2s2,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah2s2' : ah2s2.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah2w2']),
                                        onTap: () async {
                                          ah2w2.text = allSchedule[indeks]['ah2w2'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah2w2,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah2w2' : ah2w2.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah2t2']),
                                        onTap: () async {
                                          ah2t2.text = allSchedule[indeks]['ah2t2'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah2t2,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah2t2' : ah2t2.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah2f2']),
                                        onTap: () async {
                                          ah2f2.text = allSchedule[indeks]['ah2f2'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah2f2,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah2f2' : ah2f2.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah2sat2']),
                                        onTap: () async {
                                          ah2sat2.text = allSchedule[indeks]['ah2sat2'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah2sat2,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah2sat2' : ah2sat2.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah2sun2']),
                                        onTap: () async {
                                          ah2sun2.text = allSchedule[indeks]['ah2sun2'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah2sun2,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah2sun2' : ah2sun2.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah3']),
                                        onTap: () async {
                                          ah3.text = allSchedule[indeks]['ah3'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah3,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah3' : ah3.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah3p3']),
                                        onTap: () async {
                                          ah3p3.text = allSchedule[indeks]['ah3p3'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah3p3,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah3p3' : ah3p3.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah3s3']),
                                        onTap: () async {
                                          ah3s3.text = allSchedule[indeks]['ah3s3'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah3s3,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah3s3' : ah3s3.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah3w3']),
                                        onTap: () async {
                                          ah3w3.text = allSchedule[indeks]['ah3w3'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah3w3,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah3w3' : ah3w3.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah3t3']),
                                        onTap: () async {
                                          ah3t3.text = allSchedule[indeks]['ah3t3'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah3t3,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah3t3' : ah3t3.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah3f3']),
                                        onTap: () async {
                                          ah3f3.text = allSchedule[indeks]['ah3f3'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah3f3,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah3f3' : ah3f3.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah3sat3']),
                                        onTap: () async {
                                          ah3sat3.text = allSchedule[indeks]['ah3sat3'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah3sat3,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah3sat3' : ah3sat3.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah3sun3']),
                                        onTap: () async {
                                          ah3sun3.text = allSchedule[indeks]['ah3sun3'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah3sun3,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah3sun3' : ah3sun3.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah4']),
                                        onTap: () async {
                                          ah4.text = allSchedule[indeks]['ah4'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah4,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah4' : ah4.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah4p4']),
                                        onTap: () async {
                                          ah4p4.text = allSchedule[indeks]['ah4p4'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah4p4,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah4p4' : ah4p4.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah4s4']),
                                        onTap: () async {
                                          ah4s4.text = allSchedule[indeks]['ah4s4'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah4s4,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah4s4' : ah4s4.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah4w4']),
                                        onTap: () async {
                                          ah4w4.text = allSchedule[indeks]['ah4w4'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah4w4,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah4w4' : ah4w4.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah4t4']),
                                        onTap: () async {
                                          ah4t4.text = allSchedule[indeks]['ah4t4'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah4t4,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah4t4' : ah4t4.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah4f4']),
                                        onTap: () async {
                                          ah4f4.text = allSchedule[indeks]['ah4f4'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah4f4,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah4f4' : ah4f4.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah4sat4']),
                                        onTap: () async {
                                          ah4sat4.text = allSchedule[indeks]['ah4sat4'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah4sat4,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah4sat4' : ah4sat4.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah4sun4']),
                                        onTap: () async {
                                          ah4sun4.text = allSchedule[indeks]['ah4sun4'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah4sun4,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah4sun4' : ah4sun4.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah5']),
                                        onTap: () async {
                                          ah5.text = allSchedule[indeks]['ah5'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah5,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah5' : ah5.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah5p5']),
                                        onTap: () async {
                                          ah5p5.text = allSchedule[indeks]['ah5p5'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah5p5,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah5p5' : ah5p5.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah5s5']),
                                        onTap: () async {
                                          ah5s5.text = allSchedule[indeks]['ah5s5'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah5s5,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah5s5' : ah5s5.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah5w5']),
                                        onTap: () async {
                                          ah5w5.text = allSchedule[indeks]['ah5w5'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah5w5,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah5w5' : ah5w5.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah5t5']),
                                        onTap: () async {
                                          ah5t5.text = allSchedule[indeks]['ah5t5'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah5t5,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah5t5' : ah5t5.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah5f5']),
                                        onTap: () async {
                                          ah5f5.text = allSchedule[indeks]['ah5f5'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah5f5,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah5f5' : ah5f5.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah5sat5']),
                                        onTap: () async {
                                          ah5sat5.text = allSchedule[indeks]['ah5sat5'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah5sat5,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah5sat5' : ah5sat5.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah5sun5']),
                                        onTap: () async {
                                          ah5sun5.text = allSchedule[indeks]['ah5sun5'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah5sun5,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah5sun5' : ah5sun5.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah6']),
                                        onTap: () async {
                                          ah6.text = allSchedule[indeks]['ah6'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah6,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah6' : ah6.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah6p6']),
                                        onTap: () async {
                                          ah6p6.text = allSchedule[indeks]['ah6p6'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah6p6,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah6p6' : ah6p6.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah6s6']),
                                        onTap: () async {
                                          ah6s6.text = allSchedule[indeks]['ah6s6'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah6s6,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah6s6' : ah6s6.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah6w6']),
                                        onTap: () async {
                                          ah6w6.text = allSchedule[indeks]['ah6w6'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah6w6,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah6w6' : ah6w6.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah6t6']),
                                        onTap: () async {
                                          ah6t6.text = allSchedule[indeks]['ah6t6'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah6t6,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah6t6' : ah6t6.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah6f6']),
                                        onTap: () async {
                                          ah6f6.text = allSchedule[indeks]['ah6f6'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah6f6,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah6f6' : ah6f6.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah6sat6']),
                                        onTap: () async {
                                          ah6sat6.text = allSchedule[indeks]['ah6sat6'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah6sat6,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah6sat6' : ah6sat6.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah6sun6']),
                                        onTap: () async {
                                          ah6sun6.text = allSchedule[indeks]['ah6sun6'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah6sun6,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah6sun6' : ah6sun6.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah7']),
                                        onTap: () async {
                                          ah7.text = allSchedule[indeks]['ah7'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah7,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah7' : ah7.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah7p7']),
                                        onTap: () async {
                                          ah7p7.text = allSchedule[indeks]['ah7p7'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah7p7,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah7p7' : ah7p7.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah7s7']),
                                        onTap: () async {
                                          ah7s7.text = allSchedule[indeks]['ah7s7'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah7s7,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah7s7' : ah7s7.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah7w7']),
                                        onTap: () async {
                                          ah7w7.text = allSchedule[indeks]['ah7w7'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah7w7,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah7w7' : ah7w7.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah7t7']),
                                        onTap: () async {
                                          ah7t7.text = allSchedule[indeks]['ah7t7'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah7t7,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah7t7' : ah7t7.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah7f7']),
                                        onTap: () async {
                                          ah7f7.text = allSchedule[indeks]['ah7f7'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah7f7,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah7f7' : ah7f7.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah7sat7']),
                                        onTap: () async {
                                          ah7sat7.text = allSchedule[indeks]['ah7sat7'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah7sat7,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah7sat7' : ah7sat7.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah7sun7']),
                                        onTap: () async {
                                          ah7sun7.text = allSchedule[indeks]['ah7sun7'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah7sun7,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah7sun7' : ah7sun7.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah8']),
                                        onTap: () async {
                                          ah8.text = allSchedule[indeks]['ah8'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah8,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah8' : ah8.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah8p8']),
                                        onTap: () async {
                                          ah8p8.text = allSchedule[indeks]['h8p8'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah8p8,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah8p8' : ah8p8.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah8s8']),
                                        onTap: () async {
                                          ah8s8.text = allSchedule[indeks]['ah8s8'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah8s8,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah8s8' : ah8s8.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah8w8']),
                                        onTap: () async {
                                          ah8w8.text = allSchedule[indeks]['ah8w8'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah8w8,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah8w8' : ah8w8.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah8t8']),
                                        onTap: () async {
                                          ah8t8.text = allSchedule[indeks]['ah8t8'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah8t8,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah8t8' : ah8t8.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah8f8']),
                                        onTap: () async {
                                          ah8f8.text = allSchedule[indeks]['ah8f8'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah8f8,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah8f8' : ah8f8.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah8sat8']),
                                        onTap: () async {
                                          ah8sat8.text = allSchedule[indeks]['ah8sat8'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah8sat8,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah8sat8' : ah8sat8.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(child: Text(allSchedule[indeks]['ah8sun8']),
                                        onTap: () async {
                                          ah8sun8.text = allSchedule[indeks]['ah8sun8'];
                                          showDialog(context: context,
                                            builder: (context)=> AlertDialog(
                                              scrollable: true,
                                              title: Row(children: [
                                                GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
                                                SizedBox(width: 20,),
                                                Text("Edit Details",style: GoogleFonts.pacifico(
                                                  fontSize: 20,fontWeight: FontWeight.bold,
                                                  color:Theme.of(context).colorScheme.primary,),),],),
                                              content: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text("Members"),
                                                        TextField(
                                                            controller: ah8sun8,
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                contentPadding: EdgeInsets.all(8),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: const BorderSide(color: Colors.grey)),
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(30),
                                                                    borderSide: BorderSide(color: CustomColors().color3)))
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Center(child: ElevatedButton(onPressed: () async {
                                                          Map<String,dynamic> uptadeInfo ={
                                                            'ah8sun8' : ah8sun8.text,
                                                          };
                                                          await AuthService().uptadeSchedule(uptadeInfo).then((value){
                                                            Navigator.pop(context);
                                                            getSchedule();
                                                          });
                                                        },
                                                            style: _buildButtonStyle(context),
                                                            child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                                                      ],),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ]
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }

  ButtonStyle _buildButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.primary,
      elevation: 10,
      minimumSize: Size(200, 55),
      shadowColor: Colors.blueGrey,);}

  Future<void>  editScheduleInfo(String indeks,){
    double widht = MediaQuery.sizeOf(context).width;
    return showDialog(context: context,
      builder: (context)=> AlertDialog(
        scrollable: true,
        title: Row(children: [
          GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.close)),
          SizedBox(width: 20,),
          Text("Edit Details",style: GoogleFonts.pacifico(
            fontSize: 20,fontWeight: FontWeight.bold,
            color:Theme.of(context).colorScheme.primary,),),],),
        content: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Members"),
                  TextField(
                      controller: h1,
                      decoration: _custominputDecoration()),
                  SizedBox(height: 8,),
                  Center(child: ElevatedButton(onPressed: () async {
                    Map<String,dynamic> uptadeInfo ={
                      'h1' : h1.text,
                    };
                    print(h1.text);
                    await AuthService().uptadeSchedule(uptadeInfo).then((value){
                      Navigator.pop(context);
                      getSchedule();
                    });
                  },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        elevation: 10,
                        minimumSize: Size(widht*0.45, 55),
                        shadowColor: Colors.blueGrey,
                      ),
                      child: Text("Uptade",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 15),))),
                ],),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration _custominputDecoration() {
    return InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.all(8),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: CustomColors().color3)));
  }
}
