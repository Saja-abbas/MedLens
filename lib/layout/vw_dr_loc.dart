
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:medlens/layout/login.dart';


class vw_dr_loc extends StatefulWidget {
  const vw_dr_loc({Key? key}) : super(key: key);

  @override
  State<vw_dr_loc> createState() => _vw_dr_locState();
}

class _vw_dr_locState extends State<vw_dr_loc> {
  late List data;
  void List_function() async {
    var url = Uri.parse(login.url+"/location/get_loc/");
    Response resp1 = await get(url);
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
      // drawer: drawuser(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Doctor Location",style: new TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
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
                              // new Text("Location : "+" "+data[index]['lname'].toString(), style: Theme
                              //     .of(context)
                              //     .textTheme
                              //     .titleMedium,
                              // ),
                              // new SizedBox(height: 6.0),

                              new Text("Name : "+" "+data[index]['location_name'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                               new Text("Doctor Id : "+" "+data[index]['doctor_id'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                               new Text("Lab Id : "+" "+data[index]['lab_id'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
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
