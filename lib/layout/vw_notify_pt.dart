// 
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:medlens/layout/login.dart';
import 'dart:convert';

import 'botnav_bys.dart';
import 'botnav_patient.dart';
import 'draw_bystander.dart';
import 'draw_patient.dart';


class vw_notify_pt extends StatefulWidget {
  const vw_notify_pt({Key? key}) : super(key: key);

  @override
  State<vw_notify_pt> createState() => _vw_notify_ptState();
}

class _vw_notify_ptState extends State<vw_notify_pt> {
  late List data;
  void List_function() async {
    var url = Uri.parse(login.url+"/notification/patient_vw/");
    Response resp1 = await post(url,body: {
      'aid':login.uid
    });
    // data = jsonDecode(resp1.body);
    this.setState(() {
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

      // drawer: drawuser(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(" NOTIFICATION",style: new TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
       body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ff.jpg'),
                fit: BoxFit.cover,
              )
          ),
          child: new ListView.builder(
            itemCount: data == null ? 0 : data.length,
            // itemCount: 2,
            itemBuilder: (context, index) {
              return new Padding(
                padding: new EdgeInsets.fromLTRB(20, 05, 10, 5),
                child: new Card(
                  elevation: 2.0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(16.0)
                  ),
                  child: InkWell(
                    onTap: () {
                      print("tapped");
                      //  tap funtion here

                    },
                    child: new Column(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.all(16.0),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              // Image.network(mainpage.url+"static/"+data[index]['pmr'].toString()),
                              // new Text("Doctor : "+" "+data[index]['lname'].toString(), style: Theme
                              //     .of(context)
                              //     .textTheme
                              //     .titleMedium,
                              // ),
                              // new SizedBox(height: 6.0),

                              new Text(" notification : "+" "+data[index]['notification'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                              new Text(" date : "+" "+data[index]['date'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                              new Text(" time : "+" "+data[index]['time'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              
                              
                              //
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          )
      ),
    );
    
  }
}
