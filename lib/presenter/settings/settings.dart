import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          children: [
            const Icon(
              Icons.person,
              size: 80,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              margin: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16)),
              child: TextField(
                textAlign: TextAlign.center,
                controller: loginController,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: 'Coloque o seu email', //some quando vamos escrever
                  border: InputBorder.none,
                  // labelText: 'Coloque o seu login:'
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16)),
              child: TextField(
                textAlign: TextAlign.center,
                controller: passwordController,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: 'Coloque a sua senha',
                  border: InputBorder.none, //some quando vamos escrever
                  // labelText: 'Coloque o seu login:'
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                print(loginController.text);
                print(passwordController.text);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Text('Login'),
                  Icon(Icons.login)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
