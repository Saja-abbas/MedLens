import 'package:flutter/material.dart';
import 'package:medlens/layout/botnav_patient.dart';
import 'package:medlens/layout/draw_patient.dart';

class patient_port extends StatefulWidget {
  const patient_port({Key? key}) : super(key: key);

  @override
  State<patient_port> createState() => _patient_portState();
}

class _patient_portState extends State<patient_port> {
  // static const data = [
  //   "https://5.imimg.com/data5/SELLER/Default/2022/9/VK/FQ/EG/17769549/ap0015.jpeg",
  //   "https://5.imimg.com/data5/SELLER/Default/2022/9/RL/ZT/GR/17769549/bkt001-5347-1000x1000.jpeg",
  //   "https://5.imimg.com/data5/SELLER/Default/2022/9/TE/IH/KW/17769549/bkt00125-1000x1000.jpeg",
  //   "https://5.imimg.com/data5/SELLER/Default/2022/9/OZ/MM/UW/17769549/bkt0041--1000x1000.jpg"
  // ];
  var label=['Home','Page1','Page2','Page3','Page4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        // automaticallyImplyLeading: false,
        title: const Text('Main Page'),
      ),
      drawer: draw_patient(),
      bottomNavigationBar: botnav_patient(),
      body: Container(

        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/pt.jpeg'),
              fit: BoxFit.cover,
            )
        ),

        // child: Padding(
        //   padding: const EdgeInsets.all(8.0),

        //   child: GridView.count(
        //     crossAxisCount: 4,
        //     childAspectRatio: 0.5,
        //     children: List.generate(
        //       data.length,
        //           (index) => Padding(
        //         padding: const EdgeInsets.all(5.0),
        //         child: GestureDetector(
        //           child: Card(
        //             child: Column(
        //               children: [
        //                 Image.network(data[index]),
        //                 Padding(
        //                   padding: const EdgeInsets.all(10.0),
        //                   child: Text('${label[index]}'),
        //                 ),
        //
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}