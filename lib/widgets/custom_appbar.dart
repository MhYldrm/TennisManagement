import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenismenanagement/ui/colors.dart';

class CustomAppBar extends StatelessWidget {
  final String title,subtitle;
  final double textSize;
    const CustomAppBar({
    super.key,
    required this.title,
    required this.subtitle,
    required this.textSize
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      shadowColor: Theme.of(context).colorScheme.shadow,
      iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      flexibleSpace: ClipRRect(
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(200)),
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
                    padding: const EdgeInsets.only(right: 95, bottom: 80),
                    child: Column(
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.pacifico(
                              fontSize: textSize,fontWeight: FontWeight.bold,
                              color:Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        Text(
                          subtitle,
                          style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}