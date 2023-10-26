import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool ignore = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    ignore = !ignore;
                  });
                },
                child: Text(ignore ? 'Blocked' : 'All Good',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    primary: ignore ? Colors.redAccent : Colors.blue
                ),
              ),
              IgnorePointer(
                ignoring: ignore,
                child: ElevatedButton(onPressed: (){
                },child: Text('Click Me'),),
              )
            ],
          ),
        ),
      ),
    ));
  }
}


