import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/ui/colors.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class AddProgramsPage extends StatefulWidget {
  const AddProgramsPage({super.key});

  @override
  State<AddProgramsPage> createState() => _AddProgramsPageState();
}

class _AddProgramsPageState extends State<AddProgramsPage> {
  List<String> dropDownItemsDay = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  List<String> dropDownItemsHour = [
    "5 / 5:59",
    "6 / 6:59",
    "7 / 7:59",
    "8 / 8:59",
    "9 / 9:59",
    "10 / 10:59",
    "11 / 11:59",
    "12 / 12:59",
    "13 / 13:59",
    "14 / 14:59",
    "15 / 15:59",
    "16 / 16:59",
    "17 / 17:59",
    "18 / 18:59",
    "19 / 19:59",
    "20 / 20:59",
    "21 / 21:59",
    "22 / 22:59",
    "23 / 23:59",
    "23:59 / 00:59",
  ];
  late String progDay,progHour,isSure;
  String? selectedDay;
  String? selectedHour;
  final formKey = GlobalKey<FormState>();
  final AuthService _authservice = AuthService();
  bool _isEmpty = false;
  String _message = "This hour is avaible/notAvaible";
  String dayController = "";

  @override
  Widget build(BuildContext context) {
    var widht = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const PreferredSize(preferredSize: Size.fromHeight(250), child: CustomAppBar(title: "Add Programs", subtitle: "",textSize: 33,)),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.57,
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
                            Container(
                              decoration: _buildBoxDecoration(),
                              child: Padding(
                                padding: _buildEdgeInsets(),
                                child: _buildDropdownDayButton(),
                              ),
                            ),
                            Container(
                              decoration: _buildBoxDecoration(),
                              child: Padding(
                                padding: _buildEdgeInsets(),
                                child: _buildDropdownHourButton(),
                              ),
                            ),
                            SwitchListTile(
                              value: _isEmpty,
                              title: Text("İs Empty ?",style: GoogleFonts.titilliumWeb(fontSize:20,fontWeight: FontWeight.bold),),
                              activeColor: CustomColors().appBarBackgroundColor,
                              inactiveThumbColor: CustomColors().appBarBackgroundColor,
                              inactiveTrackColor: CustomColors().splashbackground,
                              secondary: Icon(
                                Icons.label_important_outline,size: 40,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              onChanged: (bool value) {
                                setState(() {
                                  _isEmpty = value;
                                  _changeMessage(value);
                                });
                              },
                            ),
                            TextFormField(
                              decoration: customInputDecoratin("Are you sure ? Yes or No", Icons.warning_amber_sharp),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Cannot be Empty";
                                } else {}
                              },
                              onSaved: (value) {
                                isSure = value!;
                              },
                            ),
                            Text(_message,style: GoogleFonts.titilliumWeb(fontSize:17),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () async{
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                    _authservice.addPrograms(
                      progDay,
                      progHour,
                      _isEmpty,
                    );
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("New Program Created")));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  elevation: 10,
                  minimumSize: Size(widht * 0.6, 55),
                  shadowColor: Colors.blueGrey,
                ),
                child: Text(
                  "Add Program",
                  style: TextStyle(fontSize: 20, color: Theme.of(context).colorScheme.secondary,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: Theme.of(context).colorScheme.primary,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }

  EdgeInsets _buildEdgeInsets() => const EdgeInsets.all(8.0);

  DropdownButton<String> _buildDropdownDayButton() {
    return DropdownButton<String>(
      hint: Text("Pick Date",style: GoogleFonts.titilliumWeb(fontSize:20,fontWeight: FontWeight.bold),),
      value: selectedDay,
      borderRadius: BorderRadius.circular(10),
      dropdownColor: Theme.of(context).colorScheme.background,
      isExpanded: true,
      icon: Icon(
        Icons.date_range_sharp,
        color: Theme.of(context).colorScheme.primary,
      ),
      underline: const SizedBox(),
      items: dropDownItemsDay.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          selectedDay = newValue;
          progDay = selectedDay!;
        });
      },
    );
  }

  DropdownButton<String> _buildDropdownHourButton() {
    return DropdownButton<String>(
      hint: Text("Pick Hour",style: GoogleFonts.titilliumWeb(fontSize:20,fontWeight: FontWeight.bold),),
      value: selectedHour,
      borderRadius: BorderRadius.circular(10),
      dropdownColor: Theme.of(context).colorScheme.background,
      menuMaxHeight: 300,
      isExpanded: true,
      icon: Icon(
        Icons.hourglass_top_outlined,
        color: Theme.of(context).colorScheme.primary,
      ),
      underline: const SizedBox(),
      items: dropDownItemsHour.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          selectedHour = newValue;
          progHour = selectedHour!;
        });
      },
    );
  }

  void _changeMessage(bool value) {
    setState(() {
      if (value == true) {
        _message = "This hour is avaible";
      } else {
        _message = "This hour is not avaible";
      }
    });
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
