import 'package:awesome_icons/awesome_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tenismenanagement/ui/colors.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';
import 'package:url_launcher/url_launcher.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({super.key});

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  int barIndex = 0;
  final String phoneNumber = "+905525059923";
  String groupLessonsImagePath = "assets/groupsessions.png";
  String privateLessonsImagePath = "assets/privatesessions.png";
  @override
  Widget build(BuildContext context) {
    List<Widget> offerList = [
      _customOffersCard(
          "Group Sessions", "..2-6..\nPersons", groupLessonsImagePath),
      _customOffersCard(
          "Private Sessions", "only YOU and Coach ", privateLessonsImagePath),
    ];

    var widht = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: CustomAppBar(
            title: "Offers",
            subtitle: "",
            textSize: 55,
          )),
      body: SingleChildScrollView(
          child: Column(
        children: [
          buildSizedBox(),
          CarouselSlider(
            items: offerList,
            options: buildCarouselOptions(height),
          ),
          buildSizedBox(),
          IndicatorWidget(barIndex: barIndex, offerList: offerList),
        ],
      )),
    );
  }

  SizedBox buildSizedBox() => const SizedBox(
        height: 30,
      );

  CarouselOptions buildCarouselOptions(double height) {
    return CarouselOptions(
        height: height / 1.8,
        autoPlay: false,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayInterval: const Duration(seconds: 2),
        enlargeCenterPage: true,
        onPageChanged: (indeks, reason) {
          setState(() {
            barIndex = indeks;
          });
        });
  }

  Card _customOffersCard(String title, String subtitle, String imagePath) {
    var widht = MediaQuery.sizeOf(context).width;
    return Card(
      color: CustomColors().appBarBackgroundColor,
      elevation: 6,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            top: 200 / 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Card(
                color: CustomColors().clr,
                elevation: 6,
                shadowColor: CustomColors().color4,
                child: Padding(
                  padding: const EdgeInsets.only(top: 95),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.kanit(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColorDark),
                      ),
                      Text(
                        subtitle,
                        style: GoogleFonts.titilliumWeb(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColorDark),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () async {
                                _callUs(phoneNumber);
                              },
                              icon: Icon(
                                Icons.call,
                                size: 35,
                                color: CustomColors().appBarBackgroundColor,
                              )),
                          IconButton(
                              onPressed: () async {
                                _sendWpMessage(phoneNumber);
                              },
                              icon: Icon(
                                FontAwesomeIcons.whatsapp,
                                size: 35,
                                color: CustomColors().appBarBackgroundColor,
                              )),
                          IconButton(
                              onPressed: () async {
                                _textSmsUs(phoneNumber);
                              },
                              icon: Icon(
                                Icons.message_outlined,
                                size: 35,
                                color: CustomColors().appBarBackgroundColor,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            height: 200,
            top: 0,
            width: 200,
            child: Container(
                child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            )),
          ),
        ],
      ),
    );
  }

  void _callUs(String phoneNumber) async {
    final Uri url = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                "ERROR",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff460e95)),
              ),
              content:
              const Text("Someting wrong please try a few moments later"),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Turn Back")),
              ],
            );
          });
    }
  }

  void _textSmsUs (String phoneNumber) async{
    final Uri url = Uri(
      scheme: 'sms',
      path: phoneNumber,
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                "ERROR",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff460e95)),
              ),
              content: const Text(
                  "Someting wrong please try a few moments later"),
              actions: [
                TextButton(
                    onPressed: () =>
                        Navigator.pop(context),
                    child: const Text("Turn Back")),
              ],
            );
          });
    }
  }

  void _sendWpMessage(String phoneNumber) async{
    String url = "whatsapp://send?phone=$phoneNumber";
    launchUrl(Uri.parse(url));
  }


}

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({
    super.key,
    required this.barIndex,
    required this.offerList,
  });

  final int barIndex;
  final List<Widget> offerList;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: barIndex,
      count: offerList.length,
      axisDirection: Axis.horizontal,
      effect: WormEffect(
        dotHeight: 10,
        dotWidth: 10,
        spacing: 10,
        dotColor: Theme.of(context).colorScheme.primary,
        activeDotColor: CustomColors().appColor,
        paintStyle: PaintingStyle.fill,
      ),
    );
  }
}
