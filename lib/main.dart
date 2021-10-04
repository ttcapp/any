import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
String btnText = "Button 1";
String btnText2 = "Button 2";
String btnText3 = "Button 3";
Color btnClr1=Colors.lightGreen;
Color btnClr2=Colors.lightGreen;
Color btnClr3=Colors.lightGreen;


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHomePage() ,
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        centerTitle: true,
        title: Text("My First App"
        ),
      ),
      body: Container(
        child: Align(
          child: Column(

            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text(btnText,style: TextStyle(color: Colors.blueAccent),),
                color: btnClr1,
                  onPressed:(){
                  setState(() {
                    btnText="Button Pressed 1";
                  });

                  }),
              RaisedButton(
                  child: Text(btnText2,style: TextStyle(color: Colors.blueAccent),),
                  color: btnClr2,
                  onPressed:(){
                    setState(() {
                      btnText2="Button Pressed 2";
                    });

                  }),
              RaisedButton(
                  child: Text(btnText3,style: TextStyle(color: Colors.blueAccent),),
                  color: btnClr3,
                  onPressed:(){
                    setState(() {
                      btnText3="Button Pressed 3";
                    });

                  })
            ],
          ),
        ),
      ),

    );
  }
}

