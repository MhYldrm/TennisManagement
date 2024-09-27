import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:tenismenanagement/services/methods/custom_functions.dart';
import 'package:tenismenanagement/ui/colors.dart';
import 'package:tenismenanagement/ui/scripts.dart';
import 'package:tenismenanagement/widgets/custom_add_sizedBox.dart';

class CustomContactCard extends StatelessWidget {
  const CustomContactCard({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    String phoneNumber = Scripts.clupPhoneNumber;
    return Card(
      color: CustomColors().clupInfoCardBackgroundColor,
      child: Container(
          height: height/5,
          decoration: BoxDecoration(
            color: CustomColors().clupInfoCardBackgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor:CustomColors().clupInfoCardBackgroundColor,
                radius: 60,
                child: Image.asset("assets/sport.jpg",height: 140,width: 140,),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text("Contact Us",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColorDark),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () async {
                            CustomFunctions(context: context).callUs(phoneNumber);
                          },
                          icon: Icon(
                            Icons.call,
                            size: 30,
                            color: CustomColors().appBarBackgroundColor,
                          )),
                      CustomAddSizedBox(10),
                      IconButton(
                          onPressed: () async {
                            CustomFunctions(context: context).sendWpMessage(phoneNumber);
                          },
                          icon: Icon(
                            FontAwesomeIcons.whatsapp,
                            size: 30,
                            color: CustomColors().appBarBackgroundColor,
                          )),
                      CustomAddSizedBox(10),
                      IconButton(
                          onPressed: () async {
                            CustomFunctions(context: context).textSmsUs(phoneNumber);
                          },
                          icon: Icon(
                            Icons.message_outlined,
                            size: 30,
                            color: CustomColors().appBarBackgroundColor,
                          )),
                    ],
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}