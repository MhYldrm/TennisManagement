import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/ui/colors.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late String name,email,password;
  final formKey = GlobalKey<FormState>();
  final firebaseAuth = FirebaseAuth.instance;
  bool _passwordVisibility = true;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width =  MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const PreferredSize(preferredSize: Size.fromHeight(250), child: CustomAppBar(title: "Sign Up", subtitle: "",textSize: 50,)),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height* 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: customInputDecoration("Name"),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Cannot be Empty";
                          }
                          else{}
                        },
                        onSaved: (value){
                          name = value!;
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: customInputDecoration("E-mail"),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Cannot be Empty";
                          }
                          else{}
                        },
                        onSaved: (value){
                          email = value!;
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              _passwordVisibility = !_passwordVisibility;
                            });
                          }, icon: Icon(
                              _passwordVisibility ? Icons.visibility_off_outlined  : Icons.visibility_outlined
                          )
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(color: CustomColors().textFieldFormHintColor,fontSize: 20),
                          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey),),
                        ),
                        obscureText: _passwordVisibility,
                        validator: (value){
                          if(value!.isEmpty){
                            return "Cannot be Empty";
                          }
                          else{}
                        },
                        onSaved: (value){
                          password = value!;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height* 0.05,
                ),
                ElevatedButton(onPressed: () async {
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                    try{
                      var result = await AuthService().signUp(name, email, password);
                      if(result == "success"){
                        formKey.currentState!.reset();
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("New User Created")));
                        Navigator.pushReplacementNamed(context, "/splashpage");
                      }else{showDialog(context: context, builder: (context){
                        return AlertDialog(
                          title: const Text("ERROR",style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xff460e95) ),),
                          content: Text(result!),
                          actions: [
                            TextButton(onPressed: ()=> Navigator.pop(context), child: const Text("Turn Back")),
                          ],
                        );
                      });}
                    }catch (e){
                      print(e.toString());
                    }
                  }else{}
                },
                  style: ElevatedButton.styleFrom(
                      elevation: 7.0,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: width*0.2)
                  ),
                  child: Text("SIGN UP",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.secondary),),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height* 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("I'm already registered"),
                    TextButton(onPressed: (){
                      Navigator.pushNamed(context, "/splashpage");
                    },
                        child: Text("Log in",style:TextStyle(color: CustomColors().textFieldFormHintColor,fontWeight: FontWeight.bold) ,)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



InputDecoration customInputDecoration (String hintText){
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: CustomColors().textFieldFormHintColor,fontSize: 20),
      enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey)
      )
  );
}