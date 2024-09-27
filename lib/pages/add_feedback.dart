import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/ui/colors.dart';

class AddFeedbackPage extends StatefulWidget {
  const AddFeedbackPage({super.key});

  @override
  State<AddFeedbackPage> createState() => _AddFeedbackPageState();
}

class _AddFeedbackPageState extends State<AddFeedbackPage> {
  late String info, subject,details;
  final formKey = GlobalKey<FormState>();
  AuthService _authservice = AuthService();



  @override
  Widget build(BuildContext context) {
    var widht = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 5,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        shadowColor: Theme.of(context).colorScheme.shadow,
        backgroundColor: Theme.of(context).colorScheme.primary,
        flexibleSpace: ClipRRect(
          borderRadius:
          const BorderRadius.only(bottomLeft: Radius.circular(200)),
          child: Container(
            decoration: const BoxDecoration(),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(150),
              bottomRight: Radius.circular(350)),
        ),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(160),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: widht * 0.2, bottom: height * 0.06),
                      child: Column(
                        children: [
                          Text(
                            "Send\nFeedback",
                            style: GoogleFonts.pacifico(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: Container(
                        height: height * 0.5,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextFormField(
                              decoration: customInputDecoratin(
                                  "Your Name or Phone Number", Icons.drive_file_rename_outline_outlined),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Cannot be Empty";
                                } else {}
                              },
                              onSaved: (value) {
                                info = value!;
                              },
                            ),
                            TextFormField(
                              decoration: customInputDecoratin("Subject",
                                  Icons.subject_outlined),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Cannot be Empty";
                                } else {}
                              },
                              onSaved: (value) {
                                subject = value!;
                              },
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Give us Some Details",
                                  hintStyle: const TextStyle(color: Color(0xFF592520), fontSize: 20),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(color: CustomColors().color3))),
                              maxLines: 6,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Cannot be Empty";
                                } else {}
                              },
                              onSaved: (value) {
                                details = value!;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: ()  async {
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                    _authservice.addFeedback(info, subject, details);
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text("New Feedback Sended")));
                    Navigator.pop(context);}
                },
                style: _buildElevatedButtonStyleFrom(widht),
                child: Text(
                  "Submit Feedback",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ButtonStyle _buildElevatedButtonStyleFrom(double widht) {
    return ElevatedButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.primary,
      elevation: 10,
      minimumSize: Size(widht * 0.6, 55),
      shadowColor: Colors.blueGrey,
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

