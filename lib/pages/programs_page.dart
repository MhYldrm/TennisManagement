import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tenismenanagement/pages/add_rezervation_page.dart';
import 'package:tenismenanagement/services/models/get_programs.dart';
import 'package:tenismenanagement/ui/colors.dart';
import 'package:tenismenanagement/ui/scripts.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class ProgramsPage extends StatefulWidget {
  const ProgramsPage({super.key});

  @override
  State<ProgramsPage> createState() => _ProgramsPageState();
}

class _ProgramsPageState extends State<ProgramsPage> {
  int _barIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showAlertDialog(context);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    const String subtitle = "For next days";
    List<Widget> programsList = [
      const GetPrograms(day: "Monday"),
      const GetPrograms(day: "Tuesday"),
      const GetPrograms(day: "Wednesday"),
      const GetPrograms(day: "Thursday"),
      const GetPrograms(day: "Friday"),
      const GetPrograms(day: "Saturday"),
      const GetPrograms(day: "Sunday"),
    ];
    double widht = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: PreferredSize(preferredSize: const Size.fromHeight(250), child: CustomAppBar(title: Scripts.getDays(_barIndex), subtitle: "",textSize: 55,)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 105),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(subtitle,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: CustomColors().appBarBackgroundColor),),
                  Icon(Icons.swipe_outlined,size: 33,color: CustomColors().appBarBackgroundColor,),
                ],
              ),
            ),
            _customBuildCarouselSlider(programsList, height),
            const SizedBox(height: 25,),
            _customBuildAnimatedSmoothIndicator(programsList),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddRezRequestPage()));
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 10,
        child: Icon(Icons.send,color: Theme.of(context).colorScheme.secondary,size: 25,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  AnimatedSmoothIndicator _customBuildAnimatedSmoothIndicator(List<Widget> programsList) {
    return AnimatedSmoothIndicator(
            activeIndex: _barIndex,
            count: programsList.length,
            axisDirection: Axis.horizontal,
            effect: WormEffect(
                dotHeight: 13,
                dotWidth: 13,
                spacing: 13,
                dotColor: Theme.of(context).colorScheme.primary,
                activeDotColor: Colors.orange,
                paintStyle: PaintingStyle.fill,
                type: WormType.normal
            ),
          );
  }

  CarouselSlider _customBuildCarouselSlider(List<Widget> programsList, double height) {
    return CarouselSlider(
            items: programsList,
            options: CarouselOptions(
                height: height/1.8,
                autoPlay: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayInterval: const Duration(seconds: 2),
                enlargeCenterPage: true,
                onPageChanged: (indeks,reason){
                  setState(() {
                    _barIndex = indeks;
                  });
                }
            ),
          );
  }

  _showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: const Text("Dear Member",style: TextStyle(color: Colors.red),),
      content: Text(Scripts.description,style: const TextStyle(fontSize: 20),),
      actions: [
        TextButton(
          child: const Text(
            "Continue to Page",
            style: TextStyle(color: Colors.red),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    showDialog(
      //AlertDialog'u göstermemize yarayan fonksiyon
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}


