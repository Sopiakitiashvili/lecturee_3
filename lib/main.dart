import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sign_in"),
        ),
        body: MyFirstStateFulWidget(),
      ),
    );
  }
}

var textFieldController = TextEditingController();
var userText = "";

class MyFirstStateFulWidget extends StatefulWidget {
  const MyFirstStateFulWidget({Key? key}) : super(key: key);

  @override
  State<MyFirstStateFulWidget> createState() => _MyFirstStateFulWidgetState();
}

class _MyFirstStateFulWidgetState extends State<MyFirstStateFulWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 50),
          padding: EdgeInsets.only(left: 120, top: 20),
          color: Colors.blue,
          width: 300,
          height: 60,
          child: Text("Sign-in", style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 50),
          color: Colors.white,
          width: 300,
          height: 250,
          child:
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            color: Colors.white,
            width: 300,
            height: 250,
            child: Column(
              children: [
                TextField(
                  controller: textFieldController,
                  decoration: InputDecoration(
                      hintText: "username"
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextField(
                    controller: textFieldController,
                    decoration: InputDecoration(
                        hintText: "password"
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 190),
                  child: TextButton(
                      onPressed: () {
                      },
                      child: Text("Sign In"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

