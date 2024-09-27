import 'package:flutter/material.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';
import 'package:tenismenanagement/widgets/custom_clup_info_card.dart';
import 'package:tenismenanagement/widgets/custom_contac_card.dart';

class ClupInfoPage extends StatefulWidget {
  const ClupInfoPage({super.key});

  @override
  State<ClupInfoPage> createState() => _ClupInfoPageState();
}

class _ClupInfoPageState extends State<ClupInfoPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: CustomAppBar(
            title: "About Us",
            subtitle: "",
            textSize: 55,
          )),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: CustomClupInfoCard(height: height/0.9),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: CustomContactCard(height: height/0.9),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


