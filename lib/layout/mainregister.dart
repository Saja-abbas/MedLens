// old one manh!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:medlens/layout/register_bys.dart';
// import 'package:medlens/layout/register_pt.dart';
// class option extends StatefulWidget {
//   const option({Key? key}) : super(key: key);

//   @override
//   State<option> createState() => _optionState();
// }

// class _optionState extends State<option> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Colors.deepPurple,
//       //   title: Text(
//       //     "CMS Group",
//       //     style: new TextStyle(
//       //       fontSize: 25,
//       //       fontWeight: FontWeight.bold,
//       //     ),
//       //   ),
//       // ),
//       body: Container(




//         // here the colour bg code!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

        
//         // decoration: BoxDecoration(
//         //   gradient: LinearGradient(
//         //     begin: Alignment.topRight,
//         //     end: Alignment.bottomLeft,
//         //     colors: [
//         //       Color.fromARGB(255, 32, 26, 48),
//         //       Color.fromARGB(255, 32, 26, 48),
//         //       // Colors.grey
//         //     ],
//         //   ),
//         // ),
          

//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('asset/l.jpg'),
//             fit: BoxFit.cover,
//           ),
//         ),   


//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 // Container(
//                 //   // alignment: ,
//                 //   child: CircleAvatar(
//                 //     backgroundColor: Colors.white,
//                 //     radius: 40.0,
//                 //     backgroundImage: AssetImage('assets/b2.jpg'),
//                 //     // backgroundImage: ,
//                 //   ),
//                 // ),
//                 Container(
//                   padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
//                 //   child: Text("Choose Your Category",style: new TextStyle(
//                 //       fontSize: 20,
//                 //       fontWeight: FontWeight.bold,
//                 //       color: Colors.white
//                 //       fontFamily: 'Times New Roman', 
//                 //   ),
//                 //   ),

//                 // ),
//                  child: Text("Choose Your Category",style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 12, 12, 12),
//                       fontFamily: 'Times New Roman', // Applying a Roman-style font
//                   ),),
//                 ),

//                 Container(
//                   // decoration: new BoxDecoration(
//                   //   borderRadius: new BorderRadius.circular(20),
//                   //   color: Colors.deepPurple,
//                   // ),
//                   child: Column(
//                     children: [
//                       // Container(
//                       //   width: 200,
//                       //   height: 75,
//                       //   // color: Colors.cyan,
//                       //   padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
//                       //   child: ElevatedButton
//                       //     (onPressed: () {
//                       //     // postdata();
//                       //     Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => farmer()));
//                       //   },
//                       //     style: ElevatedButton.styleFrom(
//                       //       primary: Colors.deepPurple, // Background color
//                       //     ),
//                       //     child: Text("Farmer"),
//                       //   ),
//                       // ),
//                       Container(
                        
//                         width: 150,
//                         height: 60,
//                         padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Color.fromARGB(255, 1, 50, 73),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                           ),
//                           onPressed: (){
//                             Navigator.of(context).push(MaterialPageRoute(
//                                 builder: (BuildContext context) => register_bys()));
//                           },
//                           child: Text("BYSTANDER",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
//                         ),
//                       ),
//                          Container(
//                         width: 150,
//                         height: 60,
//                         padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Color.fromARGB(255, 1, 50, 73),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                           ),
//                           onPressed: (){
//                             Navigator.of(context).push(MaterialPageRoute(
//                                 builder: (BuildContext context) => register_pt()));
//                           },
//                           child: Text("PATIENT",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
//                         ),
//                       ),


//                     ],
//                   ),
//                 )

//               ],

//             ),
//           ),
//         ),
//       ),



//     );
//   }
// }





// end of this!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!








import 'package:flutter/material.dart';
import 'package:medlens/layout/register_bys.dart';
import 'package:medlens/layout/register_pt.dart';

class option extends StatefulWidget {
  const option({Key? key}) : super(key: key);

  @override
  State<option> createState() => _optionState();
}

class _optionState extends State<option> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context,'/login'); // Goes back to the previous screen
          },
        ),
        title: Text(
          "Choose Category",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/l.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
                  child: Text(
                    "Choose Your Category",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 12, 12, 12),
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 60,
                        padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 1, 50, 73),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => register_bys()));
                          },
                          child: Text(
                            "BYSTANDER",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 60,
                        padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 1, 50, 73),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => register_pt()));
                          },
                          child: Text(
                            "PATIENT",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}