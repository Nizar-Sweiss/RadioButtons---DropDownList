import 'package:flutter/material.dart';
import 'package:main/screens/firstscreen.dart';
import 'package:main/screens/secondscreen.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color.fromARGB(255, 21, 0, 96), title: Text("General Science Questions & Answers"),),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/mainimage.jfif"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style:  ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 246, 237, 240),
              fixedSize: const Size(300, 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
              
                onPressed: () {setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return FirstScreen();
                    })));
                  });},
                child: Text(
                  "Physics MCQ",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style:  ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 255, 255, 255),
              fixedSize: const Size(300, 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return SecondScreen();
                    })));
                  });
                },
                child: Text(
                  "Chemistry MCQs ",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
