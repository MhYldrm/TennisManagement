import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tenismenanagement/pages/intro_page.dart';
import 'package:tenismenanagement/pages/settings_page.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/ui/colors.dart';
import 'package:tenismenanagement/widgets/custom_add_sizedBox.dart';
import 'package:tenismenanagement/widgets/custom_card_widget.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  AuthService authService = AuthService();
  String? imageUrl;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: CustomAppBar(
            title: "My Profile",
            subtitle: "",
            textSize: 45,
          )),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomAddSizedBox(40),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Card(
                color: CustomColors().clupInfoCardBackgroundColor,
                child: Container(
                    height: height / 5,
                    decoration: BoxDecoration(
                      color: CustomColors().clupInfoCardBackgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.white,
                              child: imageUrl == null ? Icon(
                                  Icons.person,
                                size: 100,
                                color: Colors.grey,
                              )
                                  : SizedBox(
                                    height: 200,
                                    width: 200,
                                    child: ClipOval(child: Image.network(imageUrl!,fit: BoxFit.cover,)),
                                  ),
                            ),
                            if(isLoading)Positioned(child: Center(
                              child: CircularProgressIndicator(
                                color: Colors.red,
                              ),
                            )),
                            Positioned(
                              right: 10,top: 10,
                              child: GestureDetector(
                                onTap: (){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      duration: Duration(seconds: 5),
                                      content: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Upload photo from ?",style: TextStyle(fontWeight: FontWeight.bold),),
                                          TextButton(onPressed: (){
                                            addImageWithGallery();
                                          }, child: Text("Gallery",style: TextStyle(color:Theme.of(context).colorScheme.secondary,),)),
                                          TextButton(onPressed: (){
                                            addImageWithCamera();
                                          }, child: Text("Camera",style: TextStyle(color:Theme.of(context).colorScheme.secondary,),)),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.add_a_photo_outlined,
                                  size: 25,
                                  color: CustomColors().appBarBackgroundColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FirebaseAuth.instance.currentUser!
                                              .displayName == null
                                      ? "${FirebaseAuth.instance.currentUser!.email}"
                                      : "${FirebaseAuth.instance.currentUser!.displayName}",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColorDark,
                                      fontSize: 15),
                                ),
                                CustomAddSizedBox(10),
                                Text(
                                  "Welcome",
                                  style: GoogleFonts.pacifico(
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColorDark,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            CustomAddSizedBox(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: customCardWidget(
                      cardText: "Settings", photoURl: "assets/settings.png"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsPage()));
                  },
                ),
                InkWell(
                  child: customCardWidget(
                      cardText: "Homepage", photoURl: "assets/home.png"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IntroPage()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  Future<void> addImageWithCamera() async{
    try{
      XFile? image = await ImagePicker().pickImage(source: ImageSource.camera);
      if(image != null){
        await uploadImageToFirebase(File(image.path));
      }else{}
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to pick image: $e",style: TextStyle(color: Colors.white),),backgroundColor: Colors.red,));
    }
  }

  Future<void> uploadImageToFirebase(File image) async {
    setState(() {
      isLoading = true;
    });
    try{
      Reference ref = FirebaseStorage.instance.ref()
          .child("users")
          .child(FirebaseAuth.instance.currentUser!.uid)
          .child("profile.png");
      await ref.putFile(image).whenComplete(() async {
        imageUrl = await ref.getDownloadURL();
        print(imageUrl);
      });
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to upload image: $e",style: TextStyle(color: Colors.white),),backgroundColor: Colors.red,));
    }
    setState(() {
      isLoading = false;
    });
  }


  void addImageWithGallery () async {
    try{
      XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image != null){
        await uploadImageToFirebase(File(image.path));
      }else{}
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to pick image: $e",style: TextStyle(color: Colors.white),),backgroundColor: Colors.red,));
    }
  }
}
