import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/screens/answerscreen.dart';
import 'package:main/screens/secondscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

String Q1 = "";
Color questionBackColor = Color.fromARGB(136, 255, 255, 255);
Color questionTextColor = Colors.black;

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 0, 123, 245),
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 57, 36, 121),),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/wallpaper.jpeg"), fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: questionBackColor,
                  child: Text(
                    "Physics Objective (Multiple Choice) General Knowledge & General Science Questions & Answers for SSC-CGL, UPPSC, UPSC, NDA, CDS and UPSC Civil Services Prelims Examinations. ",
                    style: TextStyle(fontFamily: "BebasNeue",
                        color: Color.fromARGB(255, 9, 8, 8), fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: questionBackColor,
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
                    width: 650,
                    child: Column(
                      children: [
                        Text(
                            " Q1 - Which among the following is / are correct statements? \n1. The images produced by Concave Mirrors are always real images \n 2. The images produced by Flat Mirrors are always virtual images \n 3. Converging Lens can produce virtual as well as real images",
                            style: TextStyle(
                              fontFamily: "AlfaSlabOne",
                                color: questionTextColor,
                                fontSize: 20,
                               )),
                        Container(
                          width: 600,
                          color: Color.fromARGB(0, 255, 193, 7),
                          child: RadioListTile(
                              title: Text("[A]",
                                  style: TextStyle(
                                      color: questionTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text("Only 1 is correct",
                                  style: TextStyle(
                                      color: questionTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              secondary: Icon(Icons.question_answer),
                              value: "A",
                              groupValue: Q1,
                              onChanged: ((value) {
                                setState(() {
                                  Q1 = value.toString();
                                });
                              })),
                        ),
                        Container(
                          width: 600,
                          color: Color.fromARGB(0, 255, 193, 7),
                          child: RadioListTile(
                              title: Text("[B]",
                                  style: TextStyle(
                                      color: questionTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text("Only 2 is correct",
                                  style: TextStyle(
                                      color: questionTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              secondary: Icon(Icons.question_answer),
                              value: "B",
                              groupValue: Q1,
                              onChanged: ((value) {
                                setState(() {
                                  Q1 = value.toString();
                                });
                              })),
                        ),
                        Container(
                          width: 600,
                          color: Color.fromARGB(0, 255, 193, 7),
                          child: RadioListTile(
                              title: Text("[C]",
                                  style: TextStyle(
                                      color: questionTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text("Only 1 & 2 are correct",
                                  style: TextStyle(
                                      color: questionTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              secondary: Icon(Icons.question_answer),
                              value: "C",
                              groupValue: Q1,
                              onChanged: ((value) {
                                setState(() {
                                  Q1 = value.toString();
                                });
                              })),
                        ),
                        Container(
                          width: 600,
                          color: Color.fromARGB(0, 255, 193, 7),
                          child: RadioListTile(
                              title: Text("[D]",
                                  style: TextStyle(
                                      color: questionTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text("Only 2 & 3 are correct",
                                  style: TextStyle(
                                      color: questionTextColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              secondary: Icon(Icons.question_answer),
                              value: "D",
                              groupValue: Q1,
                              onChanged: ((value) {
                                setState(() {
                                  Q1 = value.toString();
                                });
                              })),
                        )
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
                      child: Icon(Icons.arrow_left,size: 35),
                    ),
                    SizedBox(width: 15,),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return AnswerScreen();
                          })));
                        });
                      },
                      child: Icon(Icons.arrow_right ,size: 35,),
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
