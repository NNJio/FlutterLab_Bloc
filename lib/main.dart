import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewHome(),
    );
  }
}



class NewHome extends StatefulWidget {
  NewHome({Key? key}) : super(key: key);

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  @override

//! ส่วนดึงข้อมูล

  void initState() {
    super.initState();
    getExchengeRate();
  }

  Future <void> getExchengeRate() async{
    var url =
        Uri.https('cdn.moneyconvert.net', '/api/latest.json', {'q': '{http}'});
    var response = await http.get(url);
    print(response.body);
  }
//! ส่วนดึงข้อมูล

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exchange'),
      ),
      body: const Center(
        child: Text('ExchangeRate'),
      ),
    );
  }
}

