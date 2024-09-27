import 'package:flutter/material.dart';

class MembersItem extends StatelessWidget {
String id,gender,name,age,phoneNumber;

MembersItem({
    super.key,
    required this.id,
    required this.gender,
    required this.name,
    required this.age,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: (){},
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                name,
                style:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 3),
              Text(
                "Gender: ${gender},Age: ${age}, Phone: ${phoneNumber}",
                style: const TextStyle(fontSize: 15, color: Colors.white70),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
