import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
String btnText = "click to see picture";

bool pictureVisiblity=false;

Color btnClr1=Colors.lightGreen;


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
      body: SingleChildScrollView(
        child: Align(
          child: Column(

            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text(btnText,style: TextStyle(color: Colors.blueAccent),),
                color: btnClr1,
                  onPressed:(){
                  setState(() {
                    btnText="picture is visible now";
                    pictureVisiblity=true;
                  });

                  }),
              // crossAxisAlignment: CrossAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              SizedBox(
                height: 10,
              ),
              Visibility(
                 visible:pictureVisiblity ,
                  child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg"))

                         ],
          ),
        ),
      ),

    );
  }
}

