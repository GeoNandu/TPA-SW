import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InternalParameters(),
    );
  }
}

class InternalParameters extends StatelessWidget {
  const InternalParameters({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[500],
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
            body: const MyStatefulWidget()));
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  late TextEditingController _controller;
  late TextEditingController _controller1;


  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller1 = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text('Internal Hardware/Analysis Options',style: TextStyle(color: Colors.red[800],fontSize: 15,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          // TextField(
          //   decoration: const InputDecoration(
          //       border: OutlineInputBorder(),
          //       labelText: 'Test Description',
          //       labelStyle: TextStyle(color: Colors.black),
          //       focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
          //   ),
          //   style: TextStyle(fontSize: 15,color: Colors.black),
          //   controller: _controller,
          //   onSubmitted: (String value) {
          //     debugPrint(value);
          //   },
          // ),


          SizedBox(height: 10,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Scale Factors',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Text('Temperature Limits',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Flexible(
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Voltage',
                          labelStyle: TextStyle(color: Colors.black),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                      ),
                      style: TextStyle(fontSize: 15,color: Colors.black),
                      controller: _controller,
                      onSubmitted: (String value) {
                        debugPrint(value);
                      },
                    ),
                ),
                SizedBox(width: 5,),
                Flexible(
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Shutdown',
                          labelStyle: TextStyle(color: Colors.black),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                      ),
                      style: TextStyle(fontSize: 15,color: Colors.black),
                      controller: _controller,
                      onSubmitted: (String value) {
                        debugPrint(value);
                      },
                    ),

                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Current',
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                        ),
                        controller: _controller1,
                        onSubmitted: (String value) {
                          debugPrint(value);
                        },
                      ),
                    ),
                    SizedBox(width: 5,),
                    Flexible(
                        child: TextField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Equilibrium Delta',
                              labelStyle: TextStyle(color: Colors.black),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                          ),
                          style: TextStyle(fontSize: 15,color: Colors.black),
                          controller: _controller,
                          onSubmitted: (String value) {
                            debugPrint(value);
                          },
                        ),

                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 25,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('                                                                   Scale Factors',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(5, 0, 100, 0),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'K1',
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                        ),
                        controller: _controller1,
                        onSubmitted: (String value) {
                          debugPrint(value);
                        },
                      ),
                    ),
                    SizedBox(width: 15,),
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'K2',
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                        ),
                        controller: _controller1,
                        onSubmitted: (String value) {
                          debugPrint(value);
                        },
                      ),

                    ),
                    SizedBox(width: 75,),
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Min. Time Increments For CD',
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                        ),
                        controller: _controller1,
                        onSubmitted: (String value) {
                          debugPrint(value);
                        },
                      ),

                    ),

                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(5, 0, 100, 0),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'K3',
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                        ),
                        controller: _controller1,
                        onSubmitted: (String value) {
                          debugPrint(value);
                        },
                      ),
                    ),
                    SizedBox(width: 20,),
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'K4',
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                        ),
                        controller: _controller1,
                        onSubmitted: (String value) {
                          debugPrint(value);
                        },
                      ),

                    ),
                    SizedBox(width: 80,),
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Equip. Test Power (W/cm)',
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                        ),
                        controller: _controller1,
                        onSubmitted: (String value) {
                          debugPrint(value);
                        },
                      ),

                    ),
                    SizedBox(width: 5,),
                    // Flexible(
                    //   child: TextField(
                    //     decoration: const InputDecoration(
                    //       border: OutlineInputBorder(),
                    //       labelText: 'Data Placeholder ',
                    //         labelStyle: TextStyle(color: Colors.black),
                    //         focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                    //     ),
                    //     controller: _controller1,
                    //     onSubmitted: (String value) {
                    //       debugPrint(value);
                    //     },
                    //   ),
                    //
                    // ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 25,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Least Squares Curve Fit Weighting',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Text('Power Frequency',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Widget Placeholder',
                            labelStyle: TextStyle(color: Colors.indigo),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                        ),
                        controller: _controller1,
                        onSubmitted: (String value) {
                          debugPrint(value);
                        },
                      ),
                    ),
                    SizedBox(width: 15,),
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Widget Placeholder',
                            labelStyle: TextStyle(color: Colors.indigo),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                        ),
                        controller: _controller1,
                        onSubmitted: (String value) {
                          debugPrint(value);
                        },
                      ),

                    ),
                    SizedBox(width: 15,),
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Widget Placeholder',
                            labelStyle: TextStyle(color: Colors.indigo),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                        ),
                        controller: _controller1,
                        onSubmitted: (String value) {
                          debugPrint(value);
                        },
                      ),

                    ),
                    SizedBox(width: 15,),
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Widget Placeholder',
                            labelStyle: TextStyle(color: Colors.indigo),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                        ),
                        controller: _controller1,
                        onSubmitted: (String value) {
                          debugPrint(value);
                        },
                      ),

                    ),
                  ],
                ),
              ),
            ],
          ),
          // Column(
          //   children: [
          //     Container(
          //       padding: EdgeInsets.all(5),
          //       child: Row(
          //         children: [
          //           Flexible(
          //             child: TextField(
          //               decoration: const InputDecoration(
          //                   border: OutlineInputBorder(),
          //                   labelText: 'End Time 1 Dynamic ',
          //                   labelStyle: TextStyle(color: Colors.black),
          //                   focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
          //               ),
          //               controller: _controller1,
          //               onSubmitted: (String value) {
          //                 debugPrint(value);
          //               },
          //             ),
          //           ),
          //           SizedBox(width: 5,),
          //           Flexible(
          //             child: TextField(
          //               decoration: const InputDecoration(
          //                   border: OutlineInputBorder(),
          //                   labelText: 'End Time 2 Dynamic ',
          //                   labelStyle: TextStyle(color: Colors.black),
          //                   focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
          //               ),
          //               controller: _controller1,
          //               onSubmitted: (String value) {
          //                 debugPrint(value);
          //               },
          //             ),
          //
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          // Column(
          //   children: [
          //     Container(
          //       padding: EdgeInsets.all(5),
          //       child: Row(
          //         children: [
          //           Flexible(
          //             child: TextField(
          //               decoration: const InputDecoration(
          //                   border: OutlineInputBorder(),
          //                   labelText: 'Time Increment 2 Dynamic ',
          //                   labelStyle: TextStyle(color: Colors.black),
          //                   focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
          //               ),
          //               controller: _controller1,
          //               onSubmitted: (String value) {
          //                 debugPrint(value);
          //               },
          //             ),
          //           ),
          //           SizedBox(width: 5,),
          //           Flexible(
          //             child: TextField(
          //               decoration: const InputDecoration(
          //                   border: OutlineInputBorder(),
          //                   labelText: 'Time Increment 2 Dynamic ',
          //                   labelStyle: TextStyle(color: Colors.black),
          //                   focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
          //               ),
          //               controller: _controller1,
          //               onSubmitted: (String value) {
          //                 debugPrint(value);
          //               },
          //             ),
          //
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(onPressed: (){}, style: ElevatedButton.styleFrom(primary: Colors.red[800]),  label: Text('Ok'),icon: Icon(Icons.check,color: Colors.green,),),
              SizedBox(width: 20,),
              ElevatedButton.icon(onPressed: (){}, style: ElevatedButton.styleFrom(primary: Colors.red[800]),label: Text('Cancel'),icon: Icon(Icons.cancel_outlined,color: Colors.black,),),
              SizedBox(width: 20,),
              ElevatedButton.icon(onPressed: (){}, style: ElevatedButton.styleFrom(primary: Colors.red[800]),label: Text('Return'),icon: Icon(Icons.keyboard_return,color: Colors.orange[500],),),
              SizedBox(width: 20,),
              ElevatedButton.icon(onPressed: (){}, style: ElevatedButton.styleFrom(primary: Colors.red[800]),label: Text('Help'),icon: Icon(Icons.help_outline,color: Colors.blue,),),
            ],
          )
        ],
      ),
    );
  }
}
