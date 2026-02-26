// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:medlens/layout/mainpage_patient.dart';
// import 'package:medlens/layout/mainregister.dart';

// class login extends StatefulWidget {
//   const login({Key? key}) : super(key: key);

//   @override
//   State<login> createState() => _loginState();
// static var url="http://192.168.1.58:8000/";
// static var uid="";
// }

// class _loginState extends State<login> {
//     late TextEditingController USER_NAME,PASSWORD;
//        bool _passwordVisible = true;
//     var data=[];
//   @override
//   void initState(){
//     USER_NAME=TextEditingController();
//     PASSWORD=TextEditingController();
//     super.initState();
//   }
// void postdata()async{
//   var url=login.url+"login/loginflutter/";
//   Response resp = await post(url,body: {
//   "username":USER_NAME.text,
//   "password":PASSWORD.text,
// });
// data=jsonDecode(resp.body);
// if(data.length>0)
// {
//   login.uid=data[0]['uid'].toString();
//   if(data[0]['type']=="patient")
//   { 
//     Navigator.of(context).push(MaterialPageRoute(
//       builder:(BuildContext)=> mainpage_patient()));
//       showDialog(context: context,builder: (context)=>AlertDialog(
//         content: Text("you have successfully logged in")));
//   }
//   else if(data[0]['type']=="bystander")
//   {
//     Navigator.of(context).push(MaterialPageRoute(
//       builder:(BuildContext)=> mainpage_patient()));
//       showDialog(context: context,builder: (context)=>AlertDialog(
//         content: Text("you have successfully logged in")));
//   }
// }
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 14, 123, 137),title: Text('Login'),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/hh.jpg'),
//             fit: BoxFit.cover,
//              )
//         ),
//         child: Center(
//           child:SingleChildScrollView(
//             child:Column(
//               children: [
//                 Container(
//                 padding:EdgeInsets.fromLTRB(90, 10, 90, 0),
//                 child: TextFormField(
//                   controller: USER_NAME,
//                   decoration: InputDecoration(
//                     labelText: "USER NAME",
//                     hintText: "usermer name",
//                     prefixIcon:Icon( Icons.people),
//                     border: OutlineInputBorder(
//                     borderRadius:BorderRadius.circular(20)
//                     )
//                     ),
//                 ),
//               ),
//               Container(
//                 padding:EdgeInsets.fromLTRB(90, 10, 90, 0),
//                 child: TextFormField(
//                   obscureText: _passwordVisible,
//                   controller: PASSWORD,
//                   decoration: InputDecoration(
//                     labelText: "PASSWORD",
//                     hintText: "password",
//                           suffixIcon: IconButton(
//                       icon: Icon(
//                         _passwordVisible ? Icons.visibility_off : Icons.visibility,
//                 ),
//                 onPressed: () {
//                   setState(() {
//                     _passwordVisible = !_passwordVisible;
//                   });
//                 },
//               ),
                   
//                     prefixIcon:Icon( Icons.password),
//                     border: OutlineInputBorder(
//                     borderRadius:BorderRadius.circular(20)
//                     )
//                     ),
//                 ),
//               ),
//                Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 0),
//                   child: ElevatedButton
//                   (onPressed: (){
//                     postdata();
//                     Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => login()));
//                   },
//                   style:ElevatedButton.styleFrom(
//                                primary: Color.fromARGB(255, 14, 123, 137),
//                              ),
//                              child: Text("LOGIN"),
//                   ),
//                ),
//                 Container(
//                   padding: EdgeInsets.fromLTRB(30, 20, 30, 30),
//                   child: ElevatedButton
//                   (onPressed: (){
//                     // postdata();
//                     Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => option()));
//                   },
//                   style:ElevatedButton.styleFrom(
//                                primary: Color.fromARGB(255, 14, 123, 137),
//                              ),
//                              child: Text("REGISTER"),
//                   ),
//                ),
//               ],
//             ) ,) ),
//         ),
//     );
//   }
// }










































// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:medlens/layout/draw_bystander.dart';
// import 'package:medlens/layout/draw_patient.dart';
// import 'package:medlens/layout/mainpage_patient.dart';
// import 'package:medlens/layout/mainregister.dart';

// class login extends StatefulWidget {
//   const login({Key? key}) : super(key: key);

//   @override
//   State<login> createState() => _loginState();
//   static var url = "http://192.168.1.17:8000/";
//   static var uid = "";
// }

// class _loginState extends State<login> {
//   late TextEditingController USER_NAME, PASSWORD;
//   bool _passwordVisible = true;
//   var data = [];

//   @override
//   void initState() {
//     USER_NAME = TextEditingController();
//     PASSWORD = TextEditingController();
//     super.initState();
//   }

//   void postdata() async {
//     var url = login.url + "login/loginflutter/";
//     Response resp = await post(url, body: {
//       "username": USER_NAME.text,
//       "password": PASSWORD.text,
//     });
//     data = jsonDecode(resp.body);
//    data=jsonDecode(resp.body);
// if(data.length>0)
// {
//   login.uid=data[0]['uid'].toString();
//   if(data[0]['type']=="patient")
//   { 
//     Navigator.of(context).push(MaterialPageRoute(
//       builder:(BuildContext)=> draw_patient()));
//       showDialog(context: context,builder: (context)=>AlertDialog(
//         content: Text("you have successfully logged in")));
//   }
//   else if(data[0]['type']=="bystander"){
//     Navigator.of(context).push(MaterialPageRoute(
//       builder:(BuildContext)=> draw_bystander()));
//       showDialog(context: context,builder: (context)=>AlertDialog(
//         content: Text("you have successfully logged in")));
//   }
// }
// }
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/saja.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Card(
//                   elevation: 5,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   margin: EdgeInsets.symmetric(horizontal: 30),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Login ',
//                           style: TextStyle(
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black87),
//                         ),
//                         SizedBox(height: 20),
//                         // Username Field
//                         TextFormField(
//                           controller: USER_NAME,
//                           decoration: InputDecoration(
//                             labelText: "Username",
//                             prefixIcon: Icon(Icons.person),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(15)),
//                           ),
//                         ),
//                         SizedBox(height: 15),
//                         // Password Field
//                         TextFormField(
//                           obscureText: _passwordVisible,
//                           controller: PASSWORD,
//                           decoration: InputDecoration(
//                             labelText: "Password",
//                             prefixIcon: Icon(Icons.lock),
//                             suffixIcon: IconButton(
//                               icon: Icon(_passwordVisible
//                                   ? Icons.visibility_off
//                                   : Icons.visibility),
//                               onPressed: () {
//                                 setState(() {
//                                   _passwordVisible = !_passwordVisible;
//                                 });
//                               },
//                             ),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(15)),
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         // Login Button
//                         SizedBox(
//                           width: double.infinity,
//                           height: 50,
//                           child: ElevatedButton(
//                             onPressed: () {
//                               postdata();
//                             },
//                             style: ElevatedButton.styleFrom(
//                               primary: Color.fromRGBO(49, 12, 233, 1),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(15),
//                               ),
//                             ),
//                             child: Text(
//                               "LOGIN",
//                               style: TextStyle(fontSize: 16),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         TextButton(
//                           onPressed: () {},
//                           child: Text("Forgot Password?",
//                               style: TextStyle(color: Colors.blueAccent)),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.of(context).push(MaterialPageRoute(
//                         builder: (BuildContext context) => option()));
//                   },
//                   child: Text(
//                     "Don't have an account? Register",
//                     style: TextStyle(color: Colors.black, fontSize: 16),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

















// here the last code!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:medlens/layout/draw_bystander.dart';
// import 'package:medlens/layout/draw_patient.dart';
// import 'package:medlens/layout/forget.dart';
// import 'package:medlens/layout/mainpage_bys.dart';
// import 'package:medlens/layout/mainpage_patient.dart';
// import 'package:medlens/layout/mainregister.dart';

// class login extends StatefulWidget {
//   const login({Key? key}) : super(key: key);

//   @override
//   State<login> createState() => _loginState();
//   static var url = "http://192.168.1.38:8000/";
//   static var uid = "";
// }

// class _loginState extends State<login> {
//   late TextEditingController USER_NAME, PASSWORD;
//   bool _passwordVisible = true;
//   var data = [];

//   @override
//   void initState() {
//     USER_NAME = TextEditingController();
//     PASSWORD = TextEditingController();
//     super.initState();
//   }

//   void postdata() async {
//     var url = login.url + "login/loginflutter/";
//     try {
//       Response resp = await post(url, body: {
//         "username": USER_NAME.text,
//         "password": PASSWORD.text,
//       });
//       data = jsonDecode(resp.body);

//       if (data.isNotEmpty) {
//         login.uid = data[0]['u_id'].toString();
//         if (data[0]['type'] == "patient") {
//           Navigator.of(context).push(MaterialPageRoute(
//               builder: (BuildContext) => mainpage_patient()));
//           showDialog(
//               context: context,
//               builder: (context) => AlertDialog(
//                     content: Text("You have successfully logged in"),
//                   ));
//         } else if (data[0]['type'] == "bystander") {
//           Navigator.of(context).push(MaterialPageRoute(
//               builder: (BuildContext) => mainpage_bys()));
//           showDialog(
//               context: context,
//               builder: (context) => AlertDialog(
//                     content: Text("You have successfully logged in"),
//                   ));
//         }
//       } else {
//         // Handle invalid username or password
//         showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             content: Text(
//               "Invalid username or password. Please enter a valid username.",
//               style: TextStyle(color: Colors.red),
//             ),
//             actions: [
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(),
//                 child: Text("OK"),
//               ),
//             ],
//           ),
//         );
//       }
//     } catch (e) {
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           content: Text(
//             "An error occurred while logging in. Please try again later.",
//             style: TextStyle(color: Colors.red),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: Text("OK"),
//             ),
//           ],
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('asset/l.jpg'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Card(
//                   elevation: 5,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   margin: EdgeInsets.symmetric(horizontal: 30),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Login ',
//                           style: TextStyle(
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black87),
//                         ),
//                         SizedBox(height: 20),
//                         // Username Field
//                         TextFormField(
//                           controller: USER_NAME,
//                           decoration: InputDecoration(
//                             labelText: "Email or Username",
//                             prefixIcon: Icon(Icons.person),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(15)),
//                           ),
//                         ),
//                         SizedBox(height: 15),
//                         // Password Field
//                         TextFormField(
//                           obscureText: _passwordVisible,
//                           controller: PASSWORD,
//                           decoration: InputDecoration(
//                             labelText: "Password",
//                             prefixIcon: Icon(Icons.lock),
//                             suffixIcon: IconButton(
//                               icon: Icon(_passwordVisible
//                                   ? Icons.visibility_off
//                                   : Icons.visibility),
//                               onPressed: () {
//                                 setState(() {
//                                   _passwordVisible = !_passwordVisible;
//                                 });
//                               },
//                             ),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(15)),
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         // Login Button
//                         SizedBox(
//                           width: double.infinity,
//                           height: 50,
//                           child: ElevatedButton(
//                             onPressed: () {
//                               postdata();
//                             },
//                             style: ElevatedButton.styleFrom(
//                               primary: Color.fromRGBO(43, 71, 229, 1),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(15),
//                               ),
//                             ),
//                             child: Text(
//                               "LOGIN",
//                               style: TextStyle(fontSize: 16),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         TextButton(
//                           onPressed: () {
//                             Navigator.of(context).push(MaterialPageRoute(
//       builder:(BuildContext)=> Forget()));
//                           },
//                           child: Text("Forgot Password?",
//                               style: TextStyle(color: Colors.blue[700])),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.of(context).push(MaterialPageRoute(
//                         builder: (BuildContext context) => option()));
//                   },
//                   child: Text(
//                     "Don't have an account? Register",
//                     style: TextStyle(color: Colors.black, fontSize: 16),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

























// here the new code!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:medlens/layout/ads.dart';
import 'package:medlens/layout/draw_bystander.dart';
import 'package:medlens/layout/draw_patient.dart';
import 'package:medlens/layout/forget.dart';
import 'package:medlens/layout/mainpage_bys.dart';
import 'package:medlens/layout/mainpage_patient.dart';
import 'package:medlens/layout/mainregister.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
  static var url = "http://192.168.137.103:8000/";
  static var uid = "";
}

class _loginState extends State<login> {
  late TextEditingController USER_NAME, PASSWORD;
  bool _passwordVisible = true;
  var data = [];

  @override
  void initState() {
    USER_NAME = TextEditingController();
    PASSWORD = TextEditingController();
    super.initState();
  }

  void postdata() async {
    var url =Uri.parse(login.url + "login/loginflutter/");
    try {
      Response resp = await post(url, body: {
        "username": USER_NAME.text,
        "password": PASSWORD.text,
      });
      data = jsonDecode(resp.body);

      if (data.isNotEmpty) {
        login.uid = data[0]['u_id'].toString();
        if (data[0]['type'] == "patient") {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext) => OnBoardingScreen()));
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    content: Text("You have successfully logged in"),
                  ));
        } else if (data[0]['type'] == "bystander") {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext) => mainpage_bys()));
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    content: Text("You have successfully logged in"),
                  ));
        }
      } else {
        // Handle invalid username or password
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Text(
              "Invalid username or password. Please enter a valid username.",
              style: TextStyle(color: Colors.red),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text("OK"),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text(
            "An error occurred while logging in. Please try again later.",
            style: TextStyle(color: Colors.red),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: Colors.white.withOpacity(0.8), // Make the container transparent
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Login ',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        SizedBox(height: 20),
                        // Username Field
                        TextFormField(
                          controller: USER_NAME,
                          decoration: InputDecoration(
                            labelText: "Email or Username",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        SizedBox(height: 15),
                        // Password Field
                        TextFormField(
                          obscureText: _passwordVisible,
                          controller: PASSWORD,
                          decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: Icon(_passwordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        SizedBox(height: 20),
                        // Login Button
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              postdata();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyan,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Text(
                              "LOGIN",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
      builder:(BuildContext)=> Forget()));
                          },
                          child: Text("Forgot Password?",
                              style: TextStyle(color: Color.fromARGB(237, 29, 0, 0))),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => option()));
                  },
                  child: Text(
                    "Don't have an account? Register",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
