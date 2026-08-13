import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculadora",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.history))],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            color: Colors.black12,
            child: Align(
              alignment: Alignment.bottomRight, // centralizando o 0 
              child: Text (
              "0",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              )
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Row(children: []),
              Row(children: []),
              Row(children: []),
              Row(children: []),
              Row(children: []),
            ],
          ),
        ],
      ),
    );
  }
}
