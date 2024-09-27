import 'package:flutter/material.dart';

class CustomClupInfoCard extends StatelessWidget {
  const CustomClupInfoCard({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
          height: height/5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 60,
                child: Image.asset("assets/academy.png",height: 140,width: 140,),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Address",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColorDark),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Merkez mah. Müfit Saner Cd.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColorDark
                                ),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("No:66 Gölcük / KOCAELİ",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColorDark
                                ),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Phone Number",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColorDark),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("(0262) 426 30 23",
                            style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context).primaryColorDark
                            ),),
                        ],
                      ),
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