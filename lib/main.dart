import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
    @override
  Widget build(BuildContext context) {
    return 
      MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Flutter Lesson Application With CR7'),
      
      );
    
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();}

class _MyHomePageState extends State<MyHomePage> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      
      appBar: AppBar(
        title: Text(widget.title),
            
        ),
      body: Center(
                
            child: 
            
            MyFirstFlutterAppWithCR7()
          
        ),
      );
    }
}

class MyFirstFlutterAppWithCR7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final screenHeight = screenInfo.size.height;
    final screenWidth = screenInfo.size.width;
     return Column(
      children : [
        Padding(
          padding:EdgeInsets.only(top:screenHeight/100,bottom: screenWidth/100),
          child: SizedBox(
            width: screenWidth,
            child: Image.asset('pictures/cr7.jpg')
            ),
        ),
        Text(
          'Cristiano Ronaldo 7',
            textAlign: TextAlign.center,
            style: TextStyle(
            color : Color.fromARGB(255, 26, 28, 7),
            fontWeight: FontWeight.bold,
            fontSize: screenWidth/10,
          ),),
        Spacer(),
        Padding(
          padding:EdgeInsets.only(left:screenWidth/100,right: screenWidth/100),
          child: Text(
            'Football is My Life',
            textAlign: TextAlign.center,
            style: TextStyle(
            color : Color.fromARGB(221, 74, 3, 3),
            fontSize: screenWidth/10,
            ),),),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom:screenHeight/100,top: screenHeight/100),
          child: SizedBox(
            width: screenWidth/2,
            height: screenHeight/15,
            child: ElevatedButton(
              child:Text('MAN UTD',style:TextStyle(fontSize: screenWidth/25),),
              onPressed: () {print('GOAL');},
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
            ),
          ),
        )
      ],
    );
  }
}