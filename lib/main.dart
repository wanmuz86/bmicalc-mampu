import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator"),backgroundColor: Colors.red),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("BMI Calculator", style: TextStyle(decoration:
            TextDecoration.underline,
                fontSize: 30, color: Colors.red),),
            SizedBox(height:10),
            Image.network("https://cdn.moreappslike.com/com.avika.bmiapplication-header.png"),
            SizedBox(height:10),
            Text("We care about your life"),
            SizedBox(height:10),
            Text("Height - 170cm"),
            SizedBox(height:10),
            Text("Weight - 80kg"),
            SizedBox(height: 10,),
            FlatButton.icon(
              color: Colors.red,
                textColor: Colors.white,
                onPressed: (){ print("Hello World");},
                icon: Icon(Icons.favorite),
              label: Text("Calculate"),
        ),
        ]
        )
      )
    );
  }
}