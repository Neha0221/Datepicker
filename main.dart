import 'package:flutter/material.dart';
import 'package:flutter_practice/DatePicker.dart';

//import 'package:flutter_intl/flutter_intl.dart';


void main() => runApp(MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: datepicker(),
    ));


    class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Hello'),
        
      ),
      body:ElevatedButton(
        onPressed: (){}, child: datepicker()),
    );
  }
}