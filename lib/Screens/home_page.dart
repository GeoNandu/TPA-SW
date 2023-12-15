import 'package:flutter/material.dart';
import 'package:geo_therm/Screens/analyze_Data.dart';
import 'package:geo_therm/Screens/create_Tpa.dart';
import 'package:geo_therm/Screens/exit.dart';
import 'package:geo_therm/Screens/internal_Parameters.dart';
import 'package:geo_therm/Screens/open_Data.dart';
import 'package:geo_therm/Screens/open_TPA.dart';
import 'package:geo_therm/Screens/probe_Temperatures.dart';
import 'package:geo_therm/Screens/start_Thermal_Test.dart';

import 'help.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red[800],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[400],
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
        body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 10,crossAxisSpacing: 10),children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateTPA()));
              },
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[500],),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_circle_sharp,size: 150,color: Colors.red,),
                    SizedBox(height: 10,),
                    Text("Create TPA File",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
                  ],),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OpenTPA()));
              },
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[500],),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.file_copy,size: 150,color: Colors.red,),
                    SizedBox(height: 10,),
                    Text("Open TPA File",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
                  ],),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StartThermal()));
              },
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[500]),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.play_arrow,size: 150,color: Colors.red,),
                    SizedBox(height: 10,),
                    Text("Start Thermal Test",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
                  ],),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AnalyzeData()));
              },
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[500],),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.analytics_outlined,size: 150,color: Colors.red,),
                    SizedBox(height: 10,),
                    Text("Analyze Data File",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
                  ],),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OpenData()));
              },
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[500],),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit_note,size: 150,color: Colors.red,),
                    SizedBox(height: 10,),
                    Text("Open Data Editor",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
                  ],),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>InternalParameters()));
              },
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[500]),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.equalizer_sharp,size: 150,color: Colors.red,),
                    SizedBox(height: 10,),
                    Text("Internal Parameters",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
                  ],),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProbeTemperatures()));
              },
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[500]),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.device_thermostat,size: 150,color: Colors.red,),
                    SizedBox(height: 10,),
                    Text("Probe Temperatures",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),)
                  ],),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Help()));
              },
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[500]),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.live_help,size: 150,color: Colors.red,),
                    SizedBox(height: 10,),
                    Text("Help",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
                  ],),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Exit()));
              },
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[500]),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.exit_to_app,size: 150,color: Colors.red,),
                    SizedBox(height: 10,),
                    Text("Close Application",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
                  ],),
              ),
            ),
          ],
          ),
        ),


      ),
    );
  }
}
