// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:medlens/layout/login.dart';
// import 'botnav_patient.dart';
// import 'draw_patient.dart';
// import 'package:file_picker/file_picker.dart';


// class UploadRpt extends StatefulWidget {
//   const UploadRpt({Key? key}) : super(key: key);

//   @override
//   State<UploadRpt> createState() => _UploadRptState();
// }

// class _UploadRptState extends State<UploadRpt> {
//  late TextEditingController report;
//  var fil,objfile;
// @override
//  void initState (){
//   report=TextEditingController();
//   super.initState();
// }

//  void postdata()async{
//     String url=login.url+"report/post_rpt/";
//     var resp=await post(url,body:{
//       'report_data':report.text.toString()

//     });
//     final request =  MultipartRequest("POST",Uri.parse(login.url+"/report/ upimg/"));
// request.fields["id"] = "bus";
// request.files.add(MultipartFile("file", objfile.readStream, objfile.size,filename: objfile.name));
// var resp1 = await request.send();
// final respStr = await resp1.stream.bytesToString();
//   }
//   file_up() async {
//   print('added successfully');
//   var result = await FilePicker.platform.pickFiles(withReadStream: true);
//   if (result != null) {
//     // var fil=result.files.single.path;
//     setState(() {
//       fil= result.files.first.name;
//       objfile = result.files.single;
//       report.text=fil;
//     });
//   } else {
//     // User canceled the picker
//   }
// }
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: draw_patient(),
//       bottomNavigationBar: botnav_patient(),
//       appBar: AppBar(
//         title: Text(
//           'Upload Report',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Color.fromARGB(255, 57, 154, 234),
//       ),
//       body: Container(
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//   padding: EdgeInsets.symmetric(vertical: 1.0),
//   width: double.infinity,
//   child: RaisedButton(
//     elevation: 5.0,
//     onPressed: () {
//       file_up();
//     },
//     padding: EdgeInsets.all(15.15),
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.only(bottomRight:Radius.circular(10) , topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
//       //borderRadius: BorderRadius.only()
//     ),
//     color: Colors.white,
//     child: Text(
//       'pick your report ',
//       style: TextStyle(
//         color: Color(0xFF072850),
//         letterSpacing: 1.5,
//         fontSize: 14.0,
//         fontWeight: FontWeight.bold,
//         fontFamily: 'OpenSans',
//       ),
//     ),
//   ),
// ),
//                  Container(
//                 padding: EdgeInsets.fromLTRB(90, 0, 98, 0),
//                 child: ElevatedButton
//                 (onPressed: (){
//                   postdata();


//                   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => UploadRpt()));
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blue,
//                 ),
//                 child: Text("UPLOAD"),
//                 ),
//               ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }












// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:medlens/layout/login.dart';
// import 'botnav_patient.dart';
// import 'draw_patient.dart';
// import 'package:file_picker/file_picker.dart';

// class UploadRpt extends StatefulWidget {
//   const UploadRpt({Key? key}) : super(key: key);

//   @override
//   State<UploadRpt> createState() => _UploadRptState();
// }

// class _UploadRptState extends State<UploadRpt> {
//   late TextEditingController report;
//   var fil, objfile;
//   var respStr="";

//   @override
//   void initState() {
//     report = TextEditingController();
//     super.initState();
//   }

//   void postdata() async {
//     var url = Uri.parse(login.url + "report/post_rpt/");
//     var resp = await post(url, body: {
//       'report_data': report.text.toString(),
//     });

//     final request = MultipartRequest("POST", Uri.parse(login.url + "/report/upimg/"));
//     request.fields["id"] = "bus";
//     request.files.add(MultipartFile("file", objfile.readStream, objfile.size, filename: objfile.name));
//     var resp1 = await request.send();
//     respStr = await resp1.stream.bytesToString();

//     // Show pop-up message on successful upload
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text("Upload Status"),
//           content: const Text("Report uploaded successfully!"),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text("OK"),
//             ),
            
//           ],
//         );
//       },
//     );
//     setState(() {
      
//     });
//   }

//   void file_up() async {
//     var result = await FilePicker.platform.pickFiles(withReadStream: true);
//     if (result != null) {
//       setState(() {
//         fil = result.files.first.name;
//         objfile = result.files.single;
//         report.text = fil;
//       });
//     } else {
//       // User canceled the picker
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: draw_patient(),
//       bottomNavigationBar: botnav_patient(),
//       appBar: AppBar(
//         title: const Text(
//           'Upload Report',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor:  Colors.cyan,
//       ),
      
//       body:
//        Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('asset/rppp.jpeg'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child:  Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 ElevatedButton(
//                   onPressed: file_up,
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.all(15.0),
//                      backgroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                     ),
//                   ),
//                   child: const Text(
//                     'Pick Your Report',
//                     style: TextStyle(
//                       color: Color(0xFF072850),
//                       letterSpacing: 1.5,
//                       fontSize: 14.0,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'OpenSans',
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     postdata();
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.cyan,
//                   ),
//                   child: const Text("UPLOAD"),
//                 ),
//                 Text(respStr),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:medlens/layout/login.dart';
import 'botnav_patient.dart';
import 'draw_patient.dart';
import 'package:file_picker/file_picker.dart';
import 'vw_rpt.dart';

class UploadRpt extends StatefulWidget {
  const UploadRpt({Key? key}) : super(key: key);

  @override
  State<UploadRpt> createState() => _UploadRptState();
}

class _UploadRptState extends State<UploadRpt> {
  late TextEditingController report;
  var fil, objfile;
  var respStr="";

  @override
  void initState() {
    report = TextEditingController();
    super.initState();
  }

  void postdata() async {
    var url = Uri.parse(login.url + "report/post_rpt/");
    var resp = await post(url, body: {
      'report_data': report.text.toString(),
    });

    final request = MultipartRequest("POST", Uri.parse(login.url + "/report/upimg/"));
    request.fields["id"] = "bus";
    request.files.add(MultipartFile("file", objfile.readStream, objfile.size, filename: objfile.name));
    var resp1 = await request.send();
    respStr = await resp1.stream.bytesToString();

    // Store response in static variable
    ViewReport.reportData = respStr;

    // Navigate to vw_rpt.dart to display the result
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ViewReport()),
    );
  }

  void file_up() async {
    var result = await FilePicker.platform.pickFiles(withReadStream: true);
    if (result != null) {
      setState(() {
        fil = result.files.first.name;
        objfile = result.files.single;
        report.text = fil;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: draw_patient(),
      bottomNavigationBar: botnav_patient(),
      appBar: AppBar(
        title: const Text(
          'Upload Report',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/rppp.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: file_up,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15.0),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      'Pick Your Report',
                      style: TextStyle(
                        color: Color(0xFF072850),
                        letterSpacing: 1.5,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      postdata();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                    ),
                    child: const Text("UPLOAD"),
                  ),
                  Text(respStr),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}