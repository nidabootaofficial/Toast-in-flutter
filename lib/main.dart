import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Toast in Flutter"),
        ),
        body: Material(
          child: MyToast(),
        ),
      ),
    ),
  );
}

class MyToast extends StatefulWidget {
  const MyToast({super.key});

  @override
  State<MyToast> createState() => _MyToastState();
}

class _MyToastState extends State<MyToast> {
  @override
  void showToast() {
    Fluttertoast.showToast(
        msg: 'This is toast notification',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        //timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow);
  }
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Show Toast"),
        onPressed: showToast,
      ),
    );
  }
}
