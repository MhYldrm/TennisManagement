import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tenismenanagement/pages/members_intro_page.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/theme/theme.dart';
import 'package:tenismenanagement/theme/theme_provider.dart';
import 'package:tenismenanagement/ui/colors.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class MembersLoginPage extends StatefulWidget {
  const MembersLoginPage({super.key});

  @override
  State<MembersLoginPage> createState() => _MembersLoginPageState();
}

class _MembersLoginPageState extends State<MembersLoginPage> {
  late String name,email,password;
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final firebaseAuth = FirebaseAuth.instance;
  bool _passwordVisibility = true;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width =  MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const PreferredSize(preferredSize: Size.fromHeight(250), child: CustomAppBar(title: "Welcome", subtitle: "",textSize: 50,)),
      drawer: const customDrawerWidget(),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height* 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
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
                padding: const EdgeInsets.all(20.0),
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
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: (){
                      _showDialog(context);
                    },
                    child: Text("Forgot Password?",style: TextStyle(color: CustomColors().textFieldFormHintColor,fontSize: 14,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: height*0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(onPressed: () async {
                        if(formKey.currentState!.validate()){
                          formKey.currentState!.save();
                          final result = await AuthService().signIn(email, password);
                          if(result == "success"){
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> const MembersIntroPage()), (route) => false);
                          }else{
                            showDialog(context: context, builder: (context){
                              return AlertDialog(
                                title: const Text("ERROR",style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xff460e95) ),),
                                content: Text(result!),
                                actions: [
                                  TextButton(onPressed: ()=> Navigator.pop(context), child: const Text("Turn Back")),
                                ],
                              );
                            });
                          }
                        }else{}
                      },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            elevation: 7.0,
                            padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: width*0.2)
                        ),
                        child: Text("LOGIN",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.secondary),),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, "/signuppage");
                        },
                            child: Text("Sign Up",style:TextStyle(color: CustomColors().textFieldFormHintColor,fontWeight: FontWeight.bold) ,)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



  void _showDialog (BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(20),),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  const Text("Forgot Your Password",style: TextStyle(fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.close)),
                ],
              ),
              const SizedBox(height: 20,),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter the Email",
                  hintText: "eg abc@gmail.com",
                ),
              ),
              const SizedBox(height: 25,),
              ElevatedButton(
                onPressed: () async{
                  await firebaseAuth.sendPasswordResetEmail(email: emailController.text).then((value){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("We have send you the reset password link to your email adress, Please check it")));
                  }).onError((error, stackTrace){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.toString())));
                  });
                  Navigator.pop(context);
                  emailController.clear();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
                child: Text("Send",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Theme.of(context).colorScheme.secondary,),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class customDrawerWidget extends StatelessWidget {
  const customDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: ListView(
        // Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: CustomColors().drawerBackground,
            ),
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            leading:
            Provider.of<ThemeProvider>(context).themeData == lightMode
                ? const Icon(
              Icons.dark_mode,
              color: Colors.black,
              size: 26,
            )
                : Icon(
              Icons.light_mode,
              color: Theme.of(context).colorScheme.primary,
              size: 26,
            ),
            title: Provider.of<ThemeProvider>(context).themeData == lightMode
                ? const Text(
              'Dark Mode',
              style: TextStyle(fontSize: 19),
            )
                : const Text(
              'Light Mode',
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false)
                  .changeTheme();
            },
          ),
          Divider(
            color: Theme.of(context).colorScheme.primary,
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: CustomColors().drawerBackground,
              size: 26,
            ),
            title: const Text(
              'Turn Back',
              style: TextStyle(color: Colors.redAccent, fontSize: 19),
            ),
            onTap: () {
              /// Close Navigation drawer before
              Navigator.pop(context);
              Navigator.pushNamed(context, "/splashpage");
            },
          ),
        ],
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


