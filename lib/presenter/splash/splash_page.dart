import 'package:flutter/material.dart';
import 'package:flutter_aula_sexta/presenter/images.dart';
import 'package:flutter_aula_sexta/presenter/settings/settings.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Settings(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Image.asset(
          imgAstro,
          fit: BoxFit.cover,
        ),
        // CircularProgressIndicator(),
      ),
    );
  }
}
