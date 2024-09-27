import 'package:flutter/material.dart';


class customCardWidget extends StatelessWidget {
  String cardText;
  String photoURl;
  customCardWidget({required this.cardText,required this.photoURl,super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0)),
      elevation: 9,
      shadowColor: Theme.of(context).colorScheme.shadow,
      margin: const EdgeInsets.all(8),
      color: Theme.of(context).colorScheme.primary.withOpacity(0.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset("${photoURl}",semanticLabel: "Members",height: 60,width: 150),
          ),
          const SizedBox(height: 2),
          Text("${cardText}",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.secondary,),),
        ],
      ),
    );
  }
}
