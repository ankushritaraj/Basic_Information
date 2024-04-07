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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

var wtController=TextEditingController();
var ftController=TextEditingController();
var inController=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Ankush Raj'),
      ),
      body:Column(
        children: [
          Text('National Institute of Technology,Patna',style: TextStyle(fontSize: 35,fontWeight:FontWeight.bold),
          ),
         Image.asset('images/nitp.jpeg'),
          Text('Student Basic Information',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          SizedBox(height: 9,),
          TextField(
            controller: wtController,
            decoration: InputDecoration(
              label: Text('Enter your Name'),
              prefixIcon: Icon(Icons.text_fields),
            ),
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 9,),
          TextField(
            controller: ftController,
            decoration: InputDecoration(
              label: Text('Enter your Branch'),
              prefixIcon: Icon(Icons.text_fields),
            ),
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 9,),
          TextField(
            controller: ftController,
            decoration: InputDecoration(
              label: Text('Roll Number'),
              prefixIcon: Icon(Icons.numbers),
            ),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 9,),
          TextField(
            controller: ftController,
            decoration: InputDecoration(
              label: Text('Session'),
              prefixIcon: Icon(Icons.numbers),
            ),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 9,),
          TextField(
            controller: ftController,
            decoration: InputDecoration(
              label: Text('Minor Program(if any)'),
              prefixIcon: Icon(Icons.text_fields),
            ),
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 9,),
          TextField(
            controller: ftController,
            decoration: InputDecoration(
              label: Text('Tech Fields'),
              prefixIcon: Icon(Icons.text_fields),
            ),
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 9,),
          ElevatedButton(onPressed: EdgeInsets.only, child: Text('Save',style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),),
        ],
      ),

    );// This trailing comma makes auto-formatting nicer for build methods.
  }
}
