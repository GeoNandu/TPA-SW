import 'package:flutter/material.dart';

class ProbeTemperatures extends StatelessWidget {
  const ProbeTemperatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF7C7C7C),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'images/logo.png',
                fit: BoxFit.contain,
                height: 55,
              ),
            ],
          ),
        ),
        body: Container(
          child: Image.asset('images/check.png'),
        ),
      ),
    );
  }
}
