import 'package:flutter/material.dart';
import 'package:tenismenanagement/services/models/get_requests.dart';
import 'package:tenismenanagement/widgets/custom_appbar.dart';

class ShowRequestsPage extends StatefulWidget {
  const ShowRequestsPage({super.key});

  @override
  State<ShowRequestsPage> createState() => _ShowRequestsPageState();
}

class _ShowRequestsPageState extends State<ShowRequestsPage> {
  @override
  Widget build(BuildContext context) {
    var widht = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(250), child: CustomAppBar(title: "Requests", subtitle: "",textSize: 55,)),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height*0.03,),
            SizedBox(
              height: height*0.6,
              child: Center(
                child: GetRequests(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


