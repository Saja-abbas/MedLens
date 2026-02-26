import 'package:flutter/material.dart';
class alert extends StatefulWidget {
  const alert({Key? key}) : super(key: key);

  @override
  State<alert> createState() => _alertState();
}
class _alertState extends State<alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert',style:new TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
      ) ,backgroundColor: Color.fromARGB(255, 57, 154, 234),
      ),
      body: Container(
        decoration: BoxDecoration( 
          image: DecorationImage(
            image: AssetImage('asset/alert.jpeg'),
             fit: BoxFit.cover,
          )
        ),
// Decorationimage
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [

              
              

            ]),
          ),
        ),
      ),
    );
    
  }
}