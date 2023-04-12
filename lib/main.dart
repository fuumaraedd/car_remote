import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String operation = 'Go';

  ButtonStyle style1 = ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 9, 17, 45),
      padding: const EdgeInsets.all(5.0),
      fixedSize: const Size(100, 90));

  ButtonStyle style2 = ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      padding: const EdgeInsets.all(5.0),
      fixedSize: const Size(100, 90));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.lightBlue[50],
            appBar: AppBar(
              backgroundColor: Colors.grey[100],
              title: const Text('Car Remote'),
              centerTitle: true,
              titleTextStyle: const TextStyle(
                  color: Color.fromARGB(255, 9, 17, 45),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Archivo'),
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 370,
                      height: 350,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          boxShadow: const [BoxShadow(blurRadius: 10)]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: _forward,
                              style: style1,
                              child: const Text('Forward',
                                  style: TextStyle(
                                      fontSize: 14, fontFamily: 'Archivo'),
                                  textAlign: TextAlign.center)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: _left,
                                    style: style1,
                                    child: const Text('Left',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Archivo'),
                                        textAlign: TextAlign.center)),
                                ElevatedButton(
                                    onPressed: _stop,
                                    style: style2,
                                    child: const Text('STOP',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontFamily: 'Archivo'),
                                        textAlign: TextAlign.center)),
                                ElevatedButton(
                                    onPressed: _right,
                                    style: style1,
                                    child: const Text('Right',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Archivo'),
                                        textAlign: TextAlign.center)),
                              ]),
                          ElevatedButton(
                              onPressed: _backward,
                              style: style1,
                              child: const Text('Backward',
                                  style: TextStyle(
                                      fontSize: 14, fontFamily: 'Archivo'),
                                  textAlign: TextAlign.center)),
                        ],
                      ),
                    ),
                    const Text(''),
                    const Text(''),
                    Text(
                      operation,
                      style:
                          const TextStyle(fontSize: 25, fontFamily: 'Archivo'),
                    )
                  ]),
            )));
  }

  void _forward() {
    operation = 'Go Forward';
    setState(() {});
  }

  void _left() {
    operation = 'Go Left';
    setState(() {});
  }

  void _stop() {
    operation = 'Stop';
    setState(() {});
  }

  void _right() {
    operation = 'Go Right';
    setState(() {});
  }

  void _backward() {
    operation = 'Go Backward';
    setState(() {});
  }
}
