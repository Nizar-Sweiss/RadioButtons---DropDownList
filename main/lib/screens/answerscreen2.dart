import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/screens/firstscreen.dart';
import 'package:main/screens/secondscreen.dart';

class AnswerScreen2 extends StatefulWidget {
  const AnswerScreen2({super.key});

  @override
  State<AnswerScreen2> createState() => _AnswerScreen2State();
}


Color questionBackColor = Color.fromARGB(136, 255, 255, 255);
Color questionTextColor = Colors.black;

class _AnswerScreen2State extends State<AnswerScreen2> {
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
              image: AssetImage("images/Swallpaper.jpg"), fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: questionBackColor,
                      borderRadius:
                          BorderRadius.circular(30), 
                      boxShadow: [
                        BoxShadow(
                          color: questionBackColor, 
                          spreadRadius: 5, 
                          blurRadius: 7, 
                          offset: Offset(0, 2), 
                         
                        ),
                        
                      ],
                    ),
                    width: 650,
                    child: Column(
                      children: [
                        Text(
                            " Q1 - Highest percentage of nitrogen is\n found in which among the following\n fertilizers among the given options?",
                            style: TextStyle(
                                color: questionTextColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 22,
                        ),
                        Text(
                            "Correct Answer: D [Urea]\nNotes:\nThe agricultural industry widely uses urea,\n a white crystalline solid containing \n46 percent nitrogen as an animal feed additive and fertilizer.\n Urea has the highest nitrogen content of \nall solid fertilizers at 46% N.",
                            style: TextStyle(
                                color: questionTextColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
 SizedBox(
                          height: 25,
                        ),
                                Text(
                            " Q2 - Which of the following is not a non-metallic mineral?",
                            style: TextStyle(
                                color: questionTextColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 22,
                        ),
                        Text(
                            "Correct Answer: B [Bauxite]\nNotes:\nNon-metallic minerals are those minerals which do not contain metals. Examples of Non-Metallic minerals include limestone,\n mica, coal, gypsum, dolomite,\n phosphate, salt, granite etc.",
                            style: TextStyle(
                                color: questionTextColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
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
                            return SecondScreen();
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
                            return Main();
                          })));
                        });
                      },
                      child: Text("Go To Main",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
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
