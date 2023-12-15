import 'package:flutter/material.dart';
import 'package:geo_therm/Screens/start_Thermal_Test.dart';

class OpenTPA extends StatelessWidget {
  const OpenTPA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF7C7C7C),
          title: Center(
            child: Row(
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
        ),
        body: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StartThermal()));
              }, child: Text('TPA_File_01'))
            ],
          ),
        )
      ),
    );
  }
}
