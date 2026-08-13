import 'package:calculadora0/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});

  @override
  State<CalculadoraPage> createState() => CalculadoraPageState();
}

class CalculadoraPageState extends State<CalculadoraPage> {
  late String displayNumber;

  @override
  void initState() {
    super.initState();
    displayNumber = '0';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculadora',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.history),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.black12,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  displayNumber,
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Row(
                children: [
                  ButtonWidget(
                    text: 'C',
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                  ),
                  ButtonWidget(
                    text: '\u232b', // ⌫
                    onPressed: () {},
                    color: Colors.orange,
                  ),
                  ButtonWidget(
                    text: '\u00f7', // ÷
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  ButtonWidget(text: '7', onPressed: () {}),
                  ButtonWidget(text: '8', onPressed: () {}),
                  ButtonWidget(text: '9', onPressed: () {}),
                  ButtonWidget(
                    text: 'x',
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  ButtonWidget(text: '4', onPressed: () {}),
                  ButtonWidget(text: '5', onPressed: () {}),
                  ButtonWidget(text: '6', onPressed: () {}),
                  ButtonWidget(
                    text: '-',
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  ButtonWidget(text: '1', onPressed: () {}),
                  ButtonWidget(text: '2', onPressed: () {}),
                  ButtonWidget(text: '3', onPressed: () {}),
                  ButtonWidget(
                    text: '+',
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  ButtonWidget(text: '0', onPressed: () {}),
                  ButtonWidget(text: '.', onPressed: () {}),
                  ButtonWidget(
                    text: '=',
                    onPressed: () {},
                    color: Colors.green,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}