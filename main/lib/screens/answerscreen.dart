import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/screens/firstscreen.dart';

class AnswerScreen extends StatefulWidget {
  const AnswerScreen({super.key});

  @override
  State<AnswerScreen> createState() => _AnswerScreenState();
}


Color questionBackColor = Color.fromARGB(136, 255, 255, 255);
Color questionTextColor = Colors.black;

class _AnswerScreenState extends State<AnswerScreen> {
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
                                color: questionTextColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 22,
                        ),
                        Text(
                            "Correct Answer: D [ Only 2 & 3 are correct]\nNotes:\nReal images can be produced by concave mirrors and converging lenses. But a \nconverging lens and concave mirror are also capable of producing virtual images if \nthe object is within the focal length. Thus statement 1 is incorrect, while statement 3 is \ncorrect. Flat mirrors can never produce real image because, rays never really\n converge, so statement 2 is correct. ",
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
                            return FirstScreen();
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
