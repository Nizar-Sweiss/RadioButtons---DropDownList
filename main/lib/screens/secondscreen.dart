import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/screens/answerscreen2.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

String Q1 = "";
Color questionBackColor = Color.fromARGB(31, 255, 255, 255);
Color questionTextColor = Color.fromARGB(255, 255, 251, 251);
List answersQ1 = [
  "Calcium ammonium nitrate",
  "Ammonium nitrate",
  "Calcium nitrate",
  "Urea"
];

List answersQ2 = [
  "Mica",
  "Bauxite",
  "Granite",
  "Silica"
];
String selectedAnswer = "Calcium nitrate";
String selectedAnswer2 = "Mica";


class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 0, 123, 245),
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/Swallpaper.jpg"), fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color:  Color.fromARGB(117, 255, 255, 255),
                  child: Text(
                    "Chemistry Objective (Multiple Choice) General Knowledge Questions & Answers for SSC-CGL, UPPSC, UPSC, NDA, CDS and UPSC Civil Services Prelims Examination",
                    style: TextStyle(
                        color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(122, 255, 255, 255),
                      borderRadius:
                          BorderRadius.circular(30), //border corner radius
                      boxShadow: [
                        BoxShadow(
                          color: questionBackColor, //color of shadow
                          spreadRadius: 5, //spread radius
                          blurRadius: 7, // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                            " Q1 Highest percentage of nitrogen is \nfound in which among the following \n fertilizers among the given options?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        DropdownButton(
                            value: selectedAnswer,
                            items: answersQ1
                                .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      "${e}",
                                      style: TextStyle(fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 205, 11, 11)),
                                    )))
                                .toList(),
                            onChanged: ((value) {
                              setState(() {
                                selectedAnswer = value.toString();
                              });
                            })),
                      ],
                    )),
                    SizedBox(height: 20,),
                    Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(122, 255, 255, 255),
                      borderRadius:
                          BorderRadius.circular(30), //border corner radius
                      boxShadow: [
                        BoxShadow(
                          color: questionBackColor, //color of shadow
                          spreadRadius: 5, //spread radius
                          blurRadius: 7, // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                            " Q2 Which of the following is not a non-metallic mineral?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        DropdownButton(
                            value: selectedAnswer2,
                            items: answersQ2
                                .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      "${e}",
                                      style: TextStyle(fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 205, 11, 11)),
                                    )))
                                .toList(),
                            onChanged: ((value) {
                              setState(() {
                                selectedAnswer2 = value.toString();
                              });
                            })),
                      ],
                    )),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return Main();
                          })));
                        });
                      },
                      child: Icon(Icons.arrow_left, size: 35),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return AnswerScreen2();
                          })));
                        });
                      },
                      child: Icon(
                        Icons.arrow_right,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
