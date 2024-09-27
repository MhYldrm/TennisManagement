import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/ui/colors.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class AddMemberPage extends StatefulWidget {
  const AddMemberPage({super.key});

  @override
  State<AddMemberPage> createState() => _AddMemberPageState();
}

class _AddMemberPageState extends State<AddMemberPage> {
  late String membersName,
      membersAge,
      membersPhoneNumber,
      membersGender;
  final formKey = GlobalKey<FormState>();
  AuthService _authservice = AuthService();

  @override
  Widget build(BuildContext context) {
    var widht = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: CustomAppBar(
            title: "New Member",
            subtitle: "",
            textSize: 45,
          )),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                child: SizedBox(
                  height: height/2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFormField(
                        decoration: customInputDecoratin(
                            "Name", Icons.badge_outlined),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Cannot be Empty";
                          } else {}
                        },
                        onSaved: (value) {
                          membersName = value!;
                        },
                      ),
                      TextFormField(
                        decoration: customInputDecoratin(
                            "Gender", Icons.wc_outlined),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Cannot be Empty";
                          } else {}
                        },
                        onSaved: (value) {
                          membersGender = value!;
                        },
                      ),
                      TextFormField(
                        decoration: customInputDecoratin(
                            "Age", Icons.badge_outlined),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Cannot be Empty";
                          } else {}
                        },
                        onSaved: (value) {
                          membersAge = value!;
                        },
                      ),
                      TextFormField(
                        decoration: customInputDecoratin(
                            "Phone Number", Icons.add_ic_call_outlined),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Cannot be Empty";
                          } else {}
                        },
                        onSaved: (value) {
                          membersPhoneNumber = value!;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () async {
                    String uid = randomAlphaNumeric(10);
                    if(formKey.currentState!.validate()){
                      formKey.currentState!.save();
                      Map<String,dynamic> memberInfo= {
                        'name' : membersName,
                        'gender' : membersGender,
                        'age' : membersAge,
                        'phoneNumber' : membersPhoneNumber,
                        'uid' : uid,
                      };
                      await _authservice.addMembers(memberInfo, uid);
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              duration: Duration(seconds: 1),
                              content: Text("New Member Created")));
                      Navigator.pop(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    elevation: 10,
                    minimumSize: Size(widht * 0.6, 55),
                    shadowColor: Colors.blueGrey,
                  ),
                  child: Text(
                    "Add Member",
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration customInputDecoratin(String hintText, IconData? icons) {
    return InputDecoration(
        labelText: hintText,
        prefixIcon: Icon(
          icons,
          color: CustomColors().appBarBackgroundColor,
        ),
        hintStyle: const TextStyle(color: Color(0xFF592520), fontSize: 20),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: CustomColors().color3)));
  }
}
