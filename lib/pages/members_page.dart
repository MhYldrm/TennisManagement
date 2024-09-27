import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/services/methods/custom_functions.dart';
import 'package:tenismenanagement/ui/colors.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({super.key});

  @override
  State<MembersPage> createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {


  //For uptades
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _genderController = TextEditingController();

 //For get data from Firebase
  List allMembers = [];
  List resultMembers = [];
  TextEditingController _searchController = TextEditingController();

  getMembers() async {
    var data = await FirebaseFirestore.instance.collection("members").orderBy("name").get();
    setState(() {
      allMembers = data.docs;
    });
    searchResultMembers();
  }
  _searchFunc(){
    searchResultMembers();}

  searchResultMembers(){
    var showResults = [];
    if(_searchController.text != "" ){
      for(var clientSnapshot in allMembers){
        var name = clientSnapshot['name'].toString().toLowerCase();
        if(name.contains(_searchController.text.toLowerCase())){
          showResults.add(clientSnapshot);
        }
      }
    }else{
      showResults = List.from(allMembers);
    }
    setState(() {
      resultMembers = showResults;
    });
  }


  @override
  void initState() {
    _searchController.addListener(_searchFunc);
    super.initState();
  }
  @override
  void dispose() {
    _searchController.removeListener(_searchFunc);
    _searchController.dispose();
    super.dispose();
  }
  @override
  void didChangeDependencies() {
    getMembers();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var widht = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(250), child: CustomAppBar(title: "Members", subtitle: "",textSize: 55,)),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 40),
              child: CupertinoSearchTextField(
                controller: _searchController,
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
                itemColor: Theme.of(context).colorScheme.primary,
                placeholderStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
                itemSize: 25,
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: height*0.57,
              child: Center(
                child: ListView.builder(
                    itemCount: resultMembers.length,
                    itemBuilder: (context,indeks){
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
                                              content: Text("Are you sure delete ?\n =>  ${resultMembers[indeks]['name']}"),
                                              actions: [
                                                TextButton(onPressed: ()=> Navigator.pop(context), child: Text("Turn Back",style: TextStyle(color: Theme.of(context).colorScheme.primary,),)),
                                                TextButton(onPressed: () async {
                                                  AuthService().removeMembers(resultMembers[indeks].id);
                                                  setState(() {
                                                    getMembers();
                                                  });
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
                                          child: resultMembers[indeks]['gender'] == "male"
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
                                                resultMembers[indeks]['name'],
                                                style: GoogleFonts.kanit(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                    Theme.of(context).primaryColorDark),
                                              ),
                                              Text(
                                                resultMembers[indeks]['phoneNumber'],
                                                style: GoogleFonts.titilliumWeb(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                    Theme.of(context).primaryColorDark),
                                              ),
                                              Text(
                                                "Age: ${resultMembers[indeks]['age']}",
                                                style: GoogleFonts.ptSerif(
                                                    fontSize: 13,
                                                    color:
                                                    Theme.of(context).primaryColorDark),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            IconButton(
                                                onPressed: (){
                                                  CustomFunctions(context: context).callUs(resultMembers[indeks]['phoneNumber']);
                                                },
                                                icon: Icon(
                                                  Icons.call_sharp,
                                                  size: 28,
                                                  color: Theme.of(context).colorScheme.primary,
                                                )),
                                            IconButton(
                                                onPressed: () {
                                                  _nameController.text = resultMembers[indeks]['name'];
                                                  _phoneNumberController.text = resultMembers[indeks]['phoneNumber'];
                                                  _ageController.text = resultMembers[indeks]['age'];
                                                  _genderController.text = resultMembers[indeks]['gender'];
                                                  editMembersInfo(resultMembers[indeks]['uid']);
                                                },
                                                icon: Icon(
                                                  Icons.edit,
                                                  size: 23,
                                                  color: Theme.of(context).colorScheme.primary,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void>  editMembersInfo(String uid){
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
                  Text("Name"),
                  TextField(
                    controller: _nameController,
                    decoration: _custominputDecoration(Icons.badge_outlined)),
                  SizedBox(height: 8,),
                  Text("Phone Number"),
                  TextField(
                    controller: _phoneNumberController,
                    decoration: _custominputDecoration(Icons.add_ic_call_outlined),),
                  SizedBox(height: 8,),
                  Text("Age"),
                  TextField(
                    controller: _ageController,
                    decoration: _custominputDecoration(Icons.badge_outlined),),
                  SizedBox(height: 8,),
                  Text("Gender"),
                  TextField(
                    controller: _genderController,
                    decoration: _custominputDecoration(Icons.wc_outlined),),
                  SizedBox(height: 15,),
                  Center(child: ElevatedButton(onPressed: () async {
                    Map<String,dynamic> uptadeInfo ={
                      'name' : _nameController.text,
                      'phoneNumber' : _phoneNumberController.text,
                      'age' : _ageController.text,
                      'gender' : _genderController.text,
                      'uid' : uid,
                    };
                    await AuthService().uptadeMembers(uid, uptadeInfo).then((value){
                      Navigator.pop(context);
                      getMembers();
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

  InputDecoration _custominputDecoration(IconData? icons) {
    return InputDecoration(
        prefixIcon: Icon(
          icons, color: CustomColors().appBarBackgroundColor,),
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


