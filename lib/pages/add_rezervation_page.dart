import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenismenanagement/services/auth_service.dart';
import 'package:tenismenanagement/ui/colors.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class AddRezRequestPage extends StatefulWidget {
  const AddRezRequestPage({super.key});

  @override
  State<AddRezRequestPage> createState() => _AddRezRequestPageState();
}

class _AddRezRequestPageState extends State<AddRezRequestPage> {
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
  late String rezDay,rezInfo,rezHour,rezNotes;
  final AuthService _authservice = AuthService();
  String? selectedDay;
  String? selectedHour;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var widht = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const PreferredSize(preferredSize: Size.fromHeight(250), child: CustomAppBar(title: "Rezervation", subtitle: "",textSize: 50,)),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: _customInputDecoratin(
                          "Name-Surname and Phone Number",
                          Icons.note_alt_outlined),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Cannot be Empty";
                        } else {}
                      },
                      onSaved: (value) {
                        rezInfo = value!;
                      },
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      decoration: _buildBoxDecoration(),
                      child: Padding(
                        padding: _buildEdgeInsets(),
                        child: _buildDropdownDayButton(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      decoration: _buildBoxDecoration(),
                      child: Padding(
                        padding: _buildEdgeInsets(),
                        child: _buildDropdownHourButton(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                          decoration: _customInputDecoratin(
                              "Dear Member, Tell us about details",
                              Icons.note_alt_outlined),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Cannot be Empty";
                            } else {}
                          },
                          onSaved: (value) {
                            rezNotes = value!;
                          },
                        ),
                  ),
                  const addSizedBox(),
                  ElevatedButton(onPressed: () async {
                    if(formKey.currentState!.validate()){
                      formKey.currentState!.save();
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          title: Text("Hello valued member,",style: TextStyle(fontWeight: FontWeight.bold,color:CustomColors().textFieldFormHintColor),),
                          content: const Text("When sending a reservation request, please write your name-surname-phone number after select the day and time.\nHowever, if you are making a request for a future date,\nKindly write the date in the notes section.\nThank you..."),
                          actions: [
                            TextButton(onPressed: ()=> Navigator.pop(context), child: const Text("Turn Back",style: TextStyle(color: Colors.red),)),
                            TextButton(onPressed: (){
                              _authservice.addRezRequest(
                                rezInfo,
                                rezDay,
                                rezHour,
                                rezNotes,
                              );
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(duration: Duration(seconds: 1),content: Text("New Request Created")));
                              Navigator.pop(context);
                            }, child: Text("Submit Rezervation",style: TextStyle(color: Theme.of(context).colorScheme.primary,),)),
                          ],
                        );
                      });
                    }},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      elevation: 10,
                      minimumSize: Size(widht*0.6, 55),
                      shadowColor: Colors.blueGrey,
                    ), child: Text( "Submit Rezervation",style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.secondary,),),
                  ),
                  const addSizedBox(),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Row(
                      children: [
                        Text("Check details of schedule/programs"),
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, "/programspage");
                        }, child: Text("here")),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration _customInputDecoratin (String hintText,IconData? icons) {
    return InputDecoration(
        labelText: hintText,
        suffixIcon: Icon(icons,color: Theme.of(context).colorScheme.primary,),
        hintStyle: const TextStyle(color: Color(0xFF592520), fontSize: 20),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary,)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary,)
        )
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
          rezDay = selectedDay!;
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
          rezHour = selectedHour!;
        });
      },
    );
  }


}

class addSizedBox extends StatelessWidget {
  const addSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 30,);
  }
}
