import 'package:asyncp/async_await/future.dart';
import 'package:flutter/material.dart';

void main() {
  final Future<int> myFuture =Future.delayed(Duration(seconds: 1),()=> info(2));
  myFuture.then((value) => print(value)).catchError((err)=>print(err));
  print(1);
  runApp(MyApp());
}
int info(int a){
  return a;
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: Future.delayed(Duration(seconds: 1),()=> info(2)),
        builder:(ctx,snapShot){
          return Scaffold(
            appBar: AppBar(title: Text("Demo"),),
            body: Center(
               
            ),
          );
        },
      ),
    );
  }
}
