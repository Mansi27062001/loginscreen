import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height*0.9,
            width: MediaQuery.of(context).size.width,
            child: Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.black,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PickUpScreen()));
                },
                style: TextButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.2),
                ),
              ),
            ),
          )),
    );
  }
}


class PickUpScreen extends StatefulWidget {

  @override
  _PickUpScreenState createState() => _PickUpScreenState();
}

class _PickUpScreenState extends State<PickUpScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Incoming...",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWo8qqspI_psTddwBDtlZM9c8zxfa90drBXA&usqp=CAU"
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Mansi",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 75,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.call_end),
                      color: Colors.redAccent,
                      onPressed: () async {

                      },
                    ),
                    IconButton(
                        icon: Icon(Icons.call),
                        color: Colors.green,
                        onPressed: () async {

                        }),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

