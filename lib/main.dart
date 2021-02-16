import 'package:flutter/material.dart';
import 'dart:math';
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
      home: BMIPage(),
    );
  }
}

class BMIPage extends StatefulWidget {
  @override
  _BMIPageState createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  var weightValue = 70.0;
  var heightValue = 170.0;
  var bmi = 0.0;
  var message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("BMI Calculator"), backgroundColor: Colors.red),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  children: [
                    Text("BMI Calculator", style: TextStyle(decoration:
                    TextDecoration.underline,
                        fontSize: 30, color: Colors.red),),
                    SizedBox(height: 10),
                    Image.network(
                        "https://cdn.moreappslike.com/com.avika.bmiapplication-header.png"),
                    SizedBox(height: 10),
                    Text("We care about your life"),
                    SizedBox(height: 10),
                    Text("Weight - ${weightValue.roundToDouble()} kg"),
                    SizedBox(height: 10),
                    Slider(
                      value: weightValue,
                      min: 20,
                      max: 200,
                      label: weightValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          weightValue = value;
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    Text("Height - ${heightValue.roundToDouble()} cm"),
                    SizedBox(height: 10,),
                    Slider(
                      value: heightValue,
                      min: 120,
                      max: 200,
                      label: heightValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          heightValue = value;
                        });
                      },
                    ),
                    SizedBox(height:10.0),
                    bmi == 0 ? SizedBox() : Text("Your BMI is $bmi . ${message.toUpperCase()}"),
                    SizedBox(height:10.0),
                    FlatButton.icon(
                      color: Colors.red,
                      textColor: Colors.white,
                      onPressed: () {
                        var bmiCalc = weightValue / (pow((heightValue/100), 2));
                        var messageTemp = "";
                        if (bmiCalc < 18){
                          messageTemp = "You are underweight";
                        }
                        else if (bmiCalc < 25){
                          messageTemp = "You are normal";
                        }
                        else if (bmiCalc < 30){
                          messageTemp = "You are overweight";
                        }
                        else {
                          messageTemp = "You are obese";
                        }
                        setState(() {
                          bmi=bmiCalc;
                          message=messageTemp;
                        });
                      },
                      icon: Icon(Icons.favorite),
                      label: Text("Calculate"),
                    ),
                  ]
              )
          ),
        )
    );
  }
}
