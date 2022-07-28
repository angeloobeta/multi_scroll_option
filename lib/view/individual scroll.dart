import 'package:flutter/material.dart';

class IndividualScroll extends StatefulWidget {
  const IndividualScroll({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<IndividualScroll> createState() => _IndividualScrollState();
}

class _IndividualScrollState extends State<IndividualScroll> {
  int _counter = 0;
  List? bodyOfArray = [
    "Nigeria",
    "England",
    "Ghana",
    "Egypt",
    "Senegal",
    "Ethiopia",
    "Germany",
    "Spain",
    "UEA",
    "South Africa"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                for (var i = 0; i < bodyOfArray!.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pinkAccent),
                        borderRadius: BorderRadius.circular(20),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(bodyOfArray![i])),
                    ),
                  ),
                SizedBox(
                  width: 20,
                ),
              ]),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                for (var i = 0; i < bodyOfArray!.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pinkAccent),
                        borderRadius: BorderRadius.circular(20),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(bodyOfArray![i])),
                    ),
                  ),
                SizedBox(
                  width: 20,
                ),
              ]),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
