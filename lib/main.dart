



import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHome(),
  ));
}


class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  bool condition = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: condition == true ? Colors.orange : Colors.lightGreen,
      appBar: AppBar(
        title: Text("Switch"),
        centerTitle: true,
      ),
      body: Center(
        child: Switch(
            activeThumbImage: NetworkImage("https://cdn3d.iconscout.com/3d/free/thumb/flutter-5562357-4642761.png"),
            activeColor: Colors.black,
            inactiveTrackColor: Colors.deepPurpleAccent,
            inactiveThumbColor: Colors.deepOrange,
            inactiveThumbImage: NetworkImage("https://cdn3d.iconscout.com/3d/free/thumb/flutter-5562357-4642761.png"),
            value: condition,
            onChanged: (value){
              setState(() {
                condition = value;
              });
            }),
      ),
    );
  }
}
