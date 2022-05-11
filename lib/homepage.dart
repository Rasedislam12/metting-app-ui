import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metting_with_friend/pages/joinpage.dart';
import 'package:metting_with_friend/pages/new_metting.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: ElevatedButton.icon(
              onPressed: () {
                Get.to(Newmettign());
              },
              icon: Icon(Icons.add),
              label: Text('New Metting'),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: OutlinedButton.icon(
              onPressed: () {
                Get.to(joinpage());
              },
              icon: Icon(Icons.margin),
              label: Text('Join Metting'),
              style: OutlinedButton.styleFrom(
                  primary: Colors.indigo,
                  fixedSize: Size(MediaQuery.of(context).size.width, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 200, 10, 100),
            child: Image.network(
                'https://thumbs.dreamstime.com/b/virtual-meeting-illustration-diverse-students-female-tutor-laptop-smartphone-home-workplace-video-call-conference-concept-193729473.jpg'),
          ),
        ],
      )),
    );
  }
}
