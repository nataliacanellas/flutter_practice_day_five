import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isOn = false;

  void changeIsOn() {
    isOn = !isOn;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print('Clicado');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: isOn ? BorderRadius.circular(12) : null,
                color: isOn ? Colors.purple : Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {
                changeIsOn();
              },
              child: const Text('Ligar/Desligar'),
            )
          ],
        ),
      ),
    );
  }
}
