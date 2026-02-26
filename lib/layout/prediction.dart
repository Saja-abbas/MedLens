// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:medlens/layout/login.dart';

// class Prediction extends StatefulWidget {
//   const Prediction({Key? key}) : super(key: key);

//   @override
//   State<Prediction> createState() => _PredictionState();
// }

// class _PredictionState extends State<Prediction> {
//   var result="";
//   int _itchingValue = 1; // State for Itching
//   int _skinRashValue = 1; // State for Skin 
//   int _nodalSkinEruptionsValue = 1; // State for nodalSkinEruptions 
//   int continuous_sneezingValue = 1; // State for continuous_sneezing
//   int shiveringValue = 1; // State for shivering
//   int chillsValue = 1; // State for  chills
//   int joint_painValue = 1; // State for  joint_pain
//   int acidityValue = 1; // State for  
//   int stomach_painValue = 1; // State for  
//   int ulcers_on_tongueValue = 1; // State for  
//   int muscle_wastingValue = 1; // State for  
//   int vomitingValue = 1; // State for  
//   int burning_micturitionValue = 1; // State for  
//   int spotting_urinationValue = 1; // State for  
//   int fatigueValue = 1; // State for  
//   int weight_gainValue = 1; // State for  
//   int anxietyValue = 1; // State for  
//   int cold_hands_and_feetsValue = 1; // State for  
//   int mood_swingsValue = 1; // State for  





//   @override
//   void initState() {
//     super.initState();
//   }

//   void postdata() async {
//     String url = login.url + "/prediction/radio/";
//     String itching, skinRash,nodalSkinEruptions,continuous_sneezing,shivering,chills,joint_pain,acidity,stomach_pain,ulcers_on_tongue,
//     muscle_wasting,vomiting,burning_micturition,spotting_urination,fatigue,weight_gain,anxiety,cold_hands_and_feets,mood_swings;

//     // Get the value of Itching based on the selected radio button
//     if (_itchingValue == 1) {
//       itching = "1";
//     } else {
//       itching = "0";
//     }

//     // Get the value of Skin Rash based on the selected radio button
//     if (_skinRashValue == 1) {
//       skinRash = "1";
//     } else {
//       skinRash = "0";
//     }

//     // Get the value of nodalSkinEruptions based on the selected radio button
//     if (_nodalSkinEruptionsValue == 1) {
//       nodalSkinEruptions = "1";
//     } else {
//       nodalSkinEruptions = "0";
//     }

//     // Get the value of continuous_sneezing based on the selected radio button
//     if (continuous_sneezingValue == 1) {
//       continuous_sneezing = "1";
//     } else {
//       continuous_sneezing = "0";
//     }

// // / Get the value of shivering based on the selected radio button
//     if (shiveringValue == 1) {
//       shivering = "1";
//     } else {
//       shivering = "0";
//     }

//     // / Get the chillsValue of nodalSkinEruptions based on the selected radio button
//     if (chillsValue == 1) {
//       chills = "1";
//     } else {
//       chills = "0";
//     }


//     // / Get the joint_painValue of nodalSkinEruptions based on the selected radio button
//     if (joint_painValue == 1) {
//       joint_pain= "1";
//     } else {
//       joint_pain = "0";
//     }


//     // / Get the Value of acidityValue based on the selected radio button
//     if (acidityValue == 1) {
//       acidity = "1";
//     } else {
//       acidity = "0";
//     }


//     // / Get the value of nodalSkinEruptions based on the selected radio button
//     if (stomach_painValue == 1) {
//       stomach_pain = "1";
//     } else {
//       stomach_pain = "0";
//     }





//     // Get the value of Itching based on the selected radio button
//     if (ulcers_on_tongueValue == 1) {
//       ulcers_on_tongue = "1";
//     } else {
//       ulcers_on_tongue = "0";
//     }

//     // Get the value of Skin Rash based on the selected radio button
//     if (muscle_wastingValue == 1) {
//       muscle_wasting = "1";
//     } else {
//       muscle_wasting = "0";
//     }

//     // Get the value of nodalSkinEruptions based on the selected radio button
//     if (vomitingValue == 1) {
//       vomiting = "1";
//     } else {
//       vomiting = "0";
//     }

//     // Get the value of continuous_sneezing based on the selected radio button
//     if (burning_micturitionValue == 1) {
//       burning_micturition = "1";
//     } else {
//       burning_micturition = "0";
//     }

// // / Get the value of shivering based on the selected radio button
//     if (spotting_urinationValue == 1) {
//       spotting_urination = "1";
//     } else {
//       spotting_urination = "0";
//     }

//     // / Get the chillsValue of nodalSkinEruptions based on the selected radio button
//     if (fatigueValue == 1) {
//       fatigue= "1";
//     } else {
//       fatigue = "0";
//     }


//     // / Get the joint_painValue of nodalSkinEruptions based on the selected radio button
//     if (weight_gainValue == 1) {
//       weight_gain= "1";
//     } else {
//       weight_gain = "0";
//     }


//     // / Get the Value of acidityValue based on the selected radio button
//     if (anxietyValue == 1) {
//        anxiety= "1";
//     } else {
//       anxiety = "0";
//     }


//     // / Get the value of nodalSkinEruptions based on the selected radio button
//     if (cold_hands_and_feetsValue == 1) {
//       cold_hands_and_feets = "1";
//     } else {
//       cold_hands_and_feets = "0";
//     }



//     // / Get the value of nodalSkinEruptions based on the selected radio button
//     if (mood_swingsValue == 1) {
//       mood_swings = "1";
//     } else {
//       mood_swings = "0";
//     }
//     // Send the HTTP POST request
//     var resp = await post(url, body: {
//       "Itching": itching,
//       "SkinRash": skinRash,
//       "nodalSkinEruptions":nodalSkinEruptions,
//       "continuous_sneezing":continuous_sneezing,
//       "shivering":shivering,
//       "chills":chills,
//       "joint_pain":joint_pain,
//       "acidity":acidity,
//       "stomach_pain":stomach_pain,
//       "ulcers_on_tongue":ulcers_on_tongue,
//       "muscle_wasting":muscle_wasting,
//       "vomiting":vomiting,
//       "burning_micturition":burning_micturition,
//       "spotting_urination":spotting_urination,
//       "fatigue":fatigue,
//     "weight_gain":weight_gain,
//     "anxiety":anxiety,
//     "cold_hands_and_feets":cold_hands_and_feets,
//     "mood_swings":mood_swings,

//     });

//     // print("hello");

//     // print(resp.body);

//     this.setState(() {
//       result=resp.body;
//     });

//     // print("haiii");

//     // Handle the response (you can customize this)
//     // if (resp.statusCode == 200) {
//     //   print("Data submitted successfully");
//     // } else {
//     //   print("Error: ${resp.statusCode}");
//     // }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Prediction'),
//       ),
//       body: Container(
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 // Itching Section
//                 Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "Itching",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: _itchingValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 _itchingValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: _itchingValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 _itchingValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Skin Rash Section
//                 Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "Skin Rash",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: _skinRashValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 _skinRashValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: _skinRashValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 _skinRashValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "nodalSkinEruptions",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: _nodalSkinEruptionsValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 _nodalSkinEruptionsValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: _nodalSkinEruptionsValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 _nodalSkinEruptionsValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),



//                 Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "continuous_sneezing",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: continuous_sneezingValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 continuous_sneezingValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: continuous_sneezingValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 continuous_sneezingValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),



//                  Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             " shivering",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: shiveringValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 shiveringValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: shiveringValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 shiveringValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),


//                 Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "chills",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: chillsValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 chillsValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: chillsValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 chillsValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),

//                   Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "joint_pain",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: joint_painValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 joint_painValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: joint_painValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 joint_painValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),



//                 Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "acidity",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: acidityValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 acidityValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: acidityValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 acidityValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),





//                 Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "stomach pain",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: stomach_painValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 stomach_painValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: stomach_painValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 stomach_painValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),





// Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "ulcers on tongue",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: ulcers_on_tongueValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 ulcers_on_tongueValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: ulcers_on_tongueValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 ulcers_on_tongueValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),




// Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "muscle wasting",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: muscle_wastingValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 muscle_wastingValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: muscle_wastingValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 muscle_wastingValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),







//                  Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "vomiting",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: vomitingValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 vomitingValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: vomitingValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 vomitingValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),


              


//                 Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "burning_micturition",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: burning_micturitionValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 burning_micturitionValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: burning_micturitionValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 burning_micturitionValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),


//                 Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "spotting urination",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: spotting_urinationValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 spotting_urinationValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: spotting_urinationValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 spotting_urinationValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),



//                  Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             " fatigue",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: fatigueValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 fatigueValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: fatigueValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 fatigueValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),


//                 Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "weight Gain",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: weight_gainValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 weight_gainValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: weight_gainValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 weight_gainValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),

//                   Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "anxiety",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: anxietyValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 anxietyValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: anxietyValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 anxietyValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),



//                 Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "cold_hands_and_feets",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: cold_hands_and_feetsValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 cold_hands_and_feetsValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: cold_hands_and_feetsValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 cold_hands_and_feetsValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),

// // DGFDF



//                 Container(
//                   padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "mood_swings",
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           Radio(
//                             value: 1,
//                             groupValue: mood_swingsValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 mood_swingsValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("Yes"),
//                           Radio(
//                             value: 2,
//                             groupValue: mood_swingsValue,
//                             onChanged: (value) {
//                               setState(() {
//                                 mood_swingsValue = value as int;
//                               });
//                             },
//                           ),
//                           Text("No"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Text(result),








//                 // Submit Button
//                 ElevatedButton(
//                   onPressed: postdata,
//                   child: Text("Submit"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   }




















































import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:medlens/layout/login.dart';

class Prediction extends StatefulWidget {
  const Prediction({Key? key}) : super(key: key);

  @override
  State createState() => _PredictionState();
}

class _PredictionState extends State {
  var result = ""; // To store the message to display
  int _itchingValue = 0;
  int _skinRashValue = 0;
  int _nodalSkinEruptionsValue = 0;
  int continuous_sneezingValue = 0;
  int shiveringValue = 0;
  int chillsValue = 0;
  int joint_painValue = 0;
  int acidityValue = 0;
  int stomach_painValue = 0;
  int ulcers_on_tongueValue = 0;
  int muscle_wastingValue = 0;
  int vomitingValue = 0;
  int burning_micturitionValue = 0;
  int spotting_urinationValue = 0;
  int fatigueValue = 0;
  int weight_gainValue = 0;
  int anxietyValue = 0;
  int cold_hands_and_feetsValue = 0;
  int mood_swingsValue = 0;




  @override
  void initState() {
    super.initState();
  }

  void postdata() async {
    

    // print("hdkhdfh");
    var url =Uri.parse( login.url + "/prediction/radio/");

  
    Map<String, String> body = {
      "Itching": _itchingValue == 1 ? "1" : "0",
      "SkinRash": _skinRashValue == 1 ? "1" : "0",
      "nodalSkinEruptions": _nodalSkinEruptionsValue == 1 ? "1" : "0",
      "continuous_sneezing": continuous_sneezingValue == 1 ? "1" : "0",
      "shivering": shiveringValue == 1 ? "1" : "0",
      "chills": chillsValue == 1 ? "1" : "0",
      "joint_pain": joint_painValue == 1 ? "1" : "0",
      "acidity": acidityValue == 1 ? "1" : "0",
      "stomach_pain": stomach_painValue == 1 ? "1" : "0",
      "ulcers_on_tongue": ulcers_on_tongueValue == 1 ? "1" : "0",
      "muscle_wasting": muscle_wastingValue == 1 ? "1" : "0",
      "vomiting": vomitingValue == 1 ? "1" : "0",
      "burning_micturition": burning_micturitionValue == 1 ? "1" : "0",
      "spotting_urination": spotting_urinationValue == 1 ? "1" : "0",
      "fatigue": fatigueValue == 1 ? "1" : "0",
      "weight_gain": weight_gainValue == 1 ? "1" : "0",
      "anxiety": anxietyValue == 1 ? "1" : "0",
      "cold_hands_and_feets": cold_hands_and_feetsValue == 1 ? "1" : "0",
      "mood_swings": mood_swingsValue == 1 ? "1" : "0",
    };

    try {
      var resp = await post(url, body: body);

      setState(() {
        if (resp.statusCode == 200) {
          result = resp.body;
        } else {
          result =
              "failed ";
        }
      });
    } catch (e) {
      setState(() {
        result = "Error: Unable to connect to the server. Please try again.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prediction'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildQuestionRow("Itching", Icons.warning_amber, _itchingValue,
                  (value) => setState(() => _itchingValue = value!)),
              buildQuestionRow("Skin Rash", Icons.spa, _skinRashValue,
                  (value) => setState(() => _skinRashValue = value!)),
              buildQuestionRow(
                  "Nodal Skin Eruptions",
                  Icons.bubble_chart,
                  _nodalSkinEruptionsValue,
                  (value) =>
                      setState(() => _nodalSkinEruptionsValue = value!)),
              buildQuestionRow(
                  "Continuous Sneezing",
                  Icons.sick,
                  continuous_sneezingValue,
                  (value) =>
                      setState(() => continuous_sneezingValue = value!)),
              buildQuestionRow("Shivering", Icons.ac_unit, shiveringValue,
                  (value) => setState(() => shiveringValue = value!)),
              buildQuestionRow("Chills", Icons.thermostat, chillsValue,
                  (value) => setState(() => chillsValue = value!)),
              buildQuestionRow("Joint Pain", Icons.accessibility_new,
                  joint_painValue, (value) => setState(() => joint_painValue = value!)),
              buildQuestionRow("Acidity", Icons.water_drop, acidityValue,
                  (value) => setState(() => acidityValue = value!)),
              buildQuestionRow("Stomach Pain", Icons.local_hospital,
                  stomach_painValue, (value) => setState(() => stomach_painValue = value!)),
              buildQuestionRow("Ulcers On Tongue", Icons.mood_bad,
                  ulcers_on_tongueValue, (value) => setState(() => ulcers_on_tongueValue = value!)),
              buildQuestionRow("Muscle Wasting", Icons.fitness_center,
                  muscle_wastingValue, (value) => setState(() => muscle_wastingValue = value!)),
              buildQuestionRow("Vomiting", Icons.medical_services, vomitingValue,
                  (value) => setState(() => vomitingValue = value!)),
              buildQuestionRow(
                  "Burning Micturition",
                  Icons.fireplace,
                  burning_micturitionValue,
                  (value) => setState(() => burning_micturitionValue = value!)),
              buildQuestionRow(
                  "Spotting Urination",
                  Icons.bloodtype,
                  spotting_urinationValue,
                  (value) => setState(() => spotting_urinationValue = value!)),
              buildQuestionRow("Fatigue", Icons.battery_alert, fatigueValue,
                  (value) => setState(() => fatigueValue = value!)),
              buildQuestionRow("Weight Gain", Icons.scale, weight_gainValue,
                  (value) => setState(() => weight_gainValue = value!)),
              buildQuestionRow("Anxiety", Icons.sentiment_dissatisfied,
                  anxietyValue, (value) => setState(() => anxietyValue = value!)),
              buildQuestionRow(
                  "Cold Hands And Feets",
                  Icons.ac_unit,
                  cold_hands_and_feetsValue,
                  (value) => setState(() => cold_hands_and_feetsValue = value!)),
              buildQuestionRow("Mood Swings", Icons.mood, mood_swingsValue,
                  (value) => setState(() => mood_swingsValue = value!)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: postdata,
                child: const Text("Submit"),
              ),
              const SizedBox(height: 20),
              // Display the result or error message
              Text(
                result,
                style: const TextStyle(fontSize: 16, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildQuestionRow(
      String title, IconData icon, int groupValue, Function(int?) onChanged) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue, size: 30),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 17, color: Colors.black54),
            ),
          ),
          Radio(
            value: 1,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
          const Text("Yes"),
          Radio(
            value: 2,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
          const Text("No"),
        ],
      ),
    );
  }
}
