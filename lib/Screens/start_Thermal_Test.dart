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
      home: const StartThermal(),
    );
  }
}

class StartThermal extends StatelessWidget {
  const StartThermal({super.key});

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
          Text('Run Thermal Test',style: TextStyle(color: Colors.red[800],fontSize: 15,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          TextField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'TPA01',
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
            ),
            style: TextStyle(fontSize: 15,color: Colors.black),
            controller: _controller,
            onSubmitted: (String value) {
              debugPrint(value);
            },
          ),
          SizedBox(height: 10,),

          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Flexible(
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        labelText: 'Number of Probes',
                        enabledBorder: OutlineInputBorder( //<-- SEE HERE
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder( //<-- SEE HERE
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        filled: true,
                        fillColor: Colors.grey,
                      ),
                      dropdownColor: Colors.red[200],

                      onChanged: (String? newValue) {
                        setState(() {

                        });
                      },
                      items: <String>['1', '2', '3', '4','5','6','7','8','9','10','11','12','13','14','15'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(fontSize: 20),
                          ),
                        );
                      }).toList(),
                    )
                ),
                SizedBox(width: 5,),
                Flexible(
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        labelText: 'Stage 1',
                        enabledBorder: OutlineInputBorder( //<-- SEE HERE
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder( //<-- SEE HERE
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        ),
                        filled: true,
                        fillColor: Colors.grey,
                      ),
                      dropdownColor: Colors.red[200],

                      onChanged: (String? newValue) {
                        setState(() {

                        });
                      },
                      items: <String>['Stage 1', '', '', ''].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(fontSize: 20),
                          ),
                        );
                      }).toList(),
                    )

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
                            labelText: 'Resistance Dynamic Value ',
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
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            labelText: 'Stage 2',
                            enabledBorder: OutlineInputBorder( //<-- SEE HERE
                              borderSide: BorderSide(color: Colors.black, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder( //<-- SEE HERE
                              borderSide: BorderSide(color: Colors.black, width: 2),
                            ),
                            filled: true,
                            fillColor: Colors.grey,
                          ),
                          dropdownColor: Colors.red[200],

                          onChanged: (String? newValue) {
                            setState(() {

                            });
                          },
                          items: <String>['Stage 2', '', '', ''].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(fontSize: 20),
                              ),
                            );
                          }).toList(),
                        )

                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(5, 0, 500, 0),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Effective Length Dynamic Value ',
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
                    //       labelText: 'Data Place Holder ',
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
          SizedBox(height: 10,),
          Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(5, 0, 500, 0),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Effective Radius Dynamic Value',
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
                            labelText: 'Start Time 2 Dynamic',
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
                            labelText: 'Start Time 2 Dynamic',
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
                            labelText: 'End Time 1 Dynamic ',
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
                            labelText: 'End Time 2 Dynamic ',
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
                            labelText: 'Time Increment 2 Dynamic ',
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
                            labelText: 'Time Increment 2 Dynamic ',
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
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(onPressed: (){}, style: ElevatedButton.styleFrom(primary: Colors.red[800]),  label: Text('Start Test'),icon: Icon(Icons.start,color: Colors.green,),),
              SizedBox(width: 20,),
              ElevatedButton.icon(onPressed: (){}, style: ElevatedButton.styleFrom(primary: Colors.red[800]),label: Text('Cancel'),icon: Icon(Icons.cancel_outlined,color: Colors.black,),),
              SizedBox(width: 20,),
              ElevatedButton.icon(onPressed: (){}, style: ElevatedButton.styleFrom(primary: Colors.red[800]),label: Text('Help'),icon: Icon(Icons.help_outline,color: Colors.blue,),),
            ],
          )
        ],
      ),
    );
  }
}
