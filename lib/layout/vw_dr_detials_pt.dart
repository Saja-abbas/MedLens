
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:medlens/layout/login.dart';
// import 'dart:convert';

// import 'botnav_patient.dart';
// import 'draw_patient.dart';

// class vw_dr_details_pt extends StatefulWidget {
//   const vw_dr_details_pt({Key? key}) : super(key: key);

//   @override
//   State<vw_dr_details_pt> createState() => _vw_dr_details_ptState();
// }

// class _vw_dr_details_ptState extends State<vw_dr_details_pt> {
//   late List data;
//   void List_function() async {
//     var url = Uri.parse(login.url+"/doctor/get_doc/ ");
//     Response resp1 = await get(url);
//     // data = jsonDecode(resp1.body);
//     this.setState(() {
//       data = jsonDecode(resp1.body);
//     });
//     print(resp1.body);
//   }

//   @override
//   Widget build(BuildContext context) {
//      List_function();
//     return Scaffold(
//       drawer: draw_patient(),
//       bottomNavigationBar: botnav_patient(),
//       // drawer: drawuser(),
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text("Doctor Details",style: new TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
//       ),
//        body: Container(
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/ff.jpg'),
//                 fit: BoxFit.cover,
//               )
//           ),
//           child: new ListView.builder(
//             itemCount: data == null ? 0 : data.length,
//             // itemCount: 2,
//             itemBuilder: (context, index) {
//               return new Padding(
//                 padding: new EdgeInsets.fromLTRB(20, 05, 10, 5),
//                 child: new Card(
//                   elevation: 2.0,
//                   shape: new RoundedRectangleBorder(
//                       borderRadius: new BorderRadius.circular(16.0)
//                   ),
//                   child: InkWell(
//                     onTap: () {
//                       print("tapped");
//                       //  tap funtion here

//                     },
//                     child: new Column(
//                       children: <Widget>[
//                         new Padding(
//                           padding: new EdgeInsets.all(16.0),
//                           child: new Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: <Widget>[
//                               // Image.network(mainpage.url+"static/"+data[index]['pmr'].toString()),
//                               // new Text("Doctor: "+" "+data[index]['lname'].toString(), style: Theme
//                               //     .of(context)
//                               //     .textTheme
//                               //     .titleMedium,
//                               // ),
//                               // new SizedBox(height: 6.0),

//                               new Text("Name:  "+" "+data[index]['doctor_name'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium
//                               ),
//                               new SizedBox(height: 6.0),
//                                new Text(" Qualification :"+" "+data[index]['doctor_qualification'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium
//                               ),
//                               new SizedBox(height: 6.0),
//                               new Text(" Age : "+" "+data[index]['doctor_age'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium
//                               ),
//                               new SizedBox(height: 6.0),
//                               new Text(" Gender: "+" "+data[index]['doctor_gender'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium
//                               ),
//                               new SizedBox(height: 6.0),
//                               new Text(" Proof : "+" "+data[index]['doctor_proof'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium
//                               ),
//                               new SizedBox(height: 6.0),
//                               new Text("Clinic Name : "+" "+data[index]['doctor_clinic_name'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium
//                               ),
//                               new SizedBox(height: 6.0),
//                               new Text("Clinic Location : "+" "+data[index]['doctor_clinic_location'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium
//                               ),
//                               new SizedBox(height: 6.0),
//                               new Text("Password:"+" "+data[index]['doctor_password'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium
//                               ),
//                               new SizedBox(height: 6.0),
//                               new Text("Status : "+" "+data[index]['doctor_status'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium
//                               ),
//                               new SizedBox(height: 6.0),
//                               new Text("Username : "+" "+data[index]['doctor_username'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium
//                               ),
//                               new SizedBox(height: 6.0),
//                               new Text("Medical Method : "+" "+data[index]['doctor_medical_method'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium
//                               ),
//                               new SizedBox(height: 6.0),
//                               new Text("Time: "+" "+data[index]['doctor_time'].toString(), style: Theme
//                                   .of(context)
//                                   .textTheme
//                                   .titleMedium
//                               ),
//                               new SizedBox(height: 6.0),
//                               //
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           )
//       ),
//     );
    
//   }
// }























































import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:medlens/layout/login.dart';
import 'dart:convert';
import 'botnav_patient.dart';
import 'draw_patient.dart';

class vw_dr_details_pt extends StatefulWidget {
  const vw_dr_details_pt({Key? key}) : super(key: key);

  @override
  State<vw_dr_details_pt> createState() => _vw_dr_details_ptState();
}

class _vw_dr_details_ptState extends State<vw_dr_details_pt> {
  late List data;

  void List_function() async {
    var url = Uri.parse(login.url + "/doctor/get_doc/");
    Response resp1 = await get(url);
    setState(() {
      data = jsonDecode(resp1.body);
    });
    print(resp1.body);
  }

  @override
  Widget build(BuildContext context) {
    List_function();
    return Scaffold(
      drawer: draw_patient(),
      bottomNavigationBar: botnav_patient(),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "DOCTOR DETAILS",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/ff.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 10, 5),
              child: Card(
                color: Colors.cyan[50],
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: InkWell(
                  onTap: () {
                    print("Tapped on doctor details.");
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person, color: Colors.black),
                                SizedBox(width: 8.0),
                                Text(
                                  "NAME : " +
                                      data[index]['doctor_name'].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.0),
                            Row(
                              children: [
                                Icon(Icons.school, color: Colors.black),
                                SizedBox(width: 8.0),
                                Text(
                                  "QUALIFICATION : " +
                                      data[index]['doctor_qualification']
                                          .toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.0),
                            Row(
                              children: [
                                Icon(Icons.cake, color: Colors.black),
                                SizedBox(width: 8.0),
                                Text(
                                  "AGE : " +
                                      data[index]['doctor_age'].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.0),
                            Row(
                              children: [
                                Icon(
                                  data[index]['doctor_gender'].toString() ==
                                          "Female"
                                      ? Icons.female
                                      : Icons.male,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  "GENDER : " +
                                      data[index]['doctor_gender'].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.0),
                            Row(
                              children: [
                                Icon(Icons.image, color: Colors.black),
                                SizedBox(width: 8.0),
                                Expanded(
                                  child: Image.network(
                                    login.url +
                                        "static/" +
                                        data[index]['doctor_proof']
                                            .toString(),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.0),
                            Row(
                              children: [
                                Icon(Icons.local_hospital, color: Colors.black),
                                SizedBox(width: 8.0),
                                Text(
                                  "CLINIC NAME : " +
                                      data[index]['doctor_clinic_name']
                                          .toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.0),
                            Row(
                              children: [
                                Icon(Icons.location_on, color: Colors.black),
                                SizedBox(width: 8.0),
                                Text(
                                  "CLINIC LOCATION : " +
                                      data[index]['doctor_clinic_location']
                                          .toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.0),
                            Row(
                              children: [
                                Icon(Icons.medical_services, color: Colors.black),
                                SizedBox(width: 8.0),
                                Text(
                                  "MEDICAL METHOD : " +
                                      data[index]['doctor_medical_method']
                                          .toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6.0),
                            Row(
                              children: [
                                Icon(Icons.schedule, color: Colors.black),
                                SizedBox(width: 8.0),
                                Text(
                                  " SERVICE TIME : " +
                                      data[index]['doctor_time'].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
