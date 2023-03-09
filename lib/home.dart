import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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

