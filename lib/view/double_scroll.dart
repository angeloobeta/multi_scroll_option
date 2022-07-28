import 'package:flutter/material.dart';

class DoubleScroll extends StatefulWidget {
  const DoubleScroll({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<DoubleScroll> createState() => _DoubleScrollState();
}

class _DoubleScrollState extends State<DoubleScroll> {
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
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
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
                const SizedBox(
                  width: 20,
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                for (var i = bodyOfArray!.length - 1; i > 0; i--)
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
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
