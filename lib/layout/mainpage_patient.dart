import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medlens/layout/botnav_patient.dart';
import 'package:medlens/layout/draw_patient.dart';

class mainpage_patient extends StatefulWidget {
  const mainpage_patient({Key? key}) : super(key: key);

  @override
  State<mainpage_patient> createState() => _mainpage_patientState();
}

class _mainpage_patientState extends State<mainpage_patient> {
  // static const data = [
  //   "https://5.imimg.com/data5/SELLER/Default/2022/9/VK/FQ/EG/17769549/ap0015.jpeg",
  //   "https://5.imimg.com/data5/SELLER/Default/2022/9/RL/ZT/GR/17769549/bkt001-5347-1000x1000.jpeg",
  //   "https://5.imimg.com/data5/SELLER/Default/2022/9/TE/IH/KW/17769549/bkt00125-1000x1000.jpeg",
  //   "https://5.imimg.com/data5/SELLER/Default/2022/9/OZ/MM/UW/17769549/bkt0041--1000x1000.jpg"
  // ];
  var label = ['Home', 'Page1', 'Page2', 'Page3', 'Page4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        // automaticallyImplyLeading: false,
        title: const Text('MEDLENS'),
      ),
      drawer: draw_patient(),
      bottomNavigationBar: botnav_patient(),
      // body: Container(

      //   decoration: BoxDecoration(
      //       image: DecorationImage(
      //         image: AssetImage('asset/pt.jpeg'),
      //         fit: BoxFit.cover,
      //       )
      //   ),

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
      // ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 200,
                  child: CarouselSlider(
                      items: [
                        Container(
                          decoration: BoxDecoration(
                          image: DecorationImage(
                         image: AssetImage('asset/1.jpeg'), ),
                              ),
                          width: 500,
                          
    
                        ),
                        Container(
                          decoration: BoxDecoration(
                          image: DecorationImage(
                         image: AssetImage('asset/2.jpeg'), ),
                              ),
                          
                          width: 500,
                          
                          // color: Colors.redAccent,
                          // child: Text("Slide 2"),
                        ),


                        Container(
                          width: 500,
                          decoration: BoxDecoration(
                          image: DecorationImage(
                         image: AssetImage('asset/3.jpeg'), ),
                              ),
                        ),
                        Container(
                          width: 700,
                          decoration: BoxDecoration(
                          image: DecorationImage(
                         image: AssetImage('asset/4.jpeg'), ),
                              ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 400,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        onPageChanged: (index, reason) {},
                        scrollDirection: Axis.horizontal,
                      )),
                ),
              ),
              SizedBox( height: 400,
                child: ListView(scrollDirection: Axis.horizontal,
                  children: [ 
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CardWidget(),
                        CardWidget(),

                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      height: 250,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Icon(
              Icons.android,
              size: 60,
            ),
            Text(
              "AI Doctor",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

// class CardWidget1 extends StatelessWidget {
//   const CardWidget1({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(30),
//       height: 250,
//       width: 300,
//       decoration: BoxDecoration(
//         color: Colors.cyan,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           spacing: 20,
//           children: [
//             Icon(
//               Icons.android,
//               size: 60,
//             ),
//             Text(
//               "AI Doctor",
//               style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }