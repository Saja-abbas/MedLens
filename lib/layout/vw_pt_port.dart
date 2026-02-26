
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:medlens/layout/login.dart';
import 'dart:convert';

import 'botnav_bys.dart';
import 'draw_bystander.dart';


class vw_pt_port extends StatefulWidget {
  const vw_pt_port({Key? key}) : super(key: key);

  @override
  State<vw_pt_port> createState() => _vw_pt_portState();
}

class _vw_pt_portState extends State<vw_pt_port> {
  late List data;
  void List_function() async {
    var url = Uri.parse(login.url+"/patient/get_pt_port/");
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
      drawer: draw_bystander(),
      bottomNavigationBar: botnav_bys(),
      // drawer: drawuser(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Patient Port",style: new TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
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
                              // new Text("Patient : "+" "+data[index]['lname'].toString(), style: Theme
                              //     .of(context)
                              //     .textTheme
                              //     .titleMedium,
                              // ),
                              // new SizedBox(height: 6.0),

                              new Text("Name:"+" "+data[index]['patient_name'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                               new Text("Age: "+" "+data[index]['patient_age'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                               new Text("Gender: "+" "+data[index]['patient_gender'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                               new Text("Contact Number :"+" "+data[index]['patient_contact_no'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                               new Text("Blood Group: "+" "+data[index]['patient_blood_group'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                               new Text("weight:"+" "+data[index]['patient_weight'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              new SizedBox(height: 6.0),
                               new Text("height :"+" "+data[index]['patient_height'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium
                              ),
                              // new SizedBox(height: 6.0),
                              //  new Text("Password: "+" "+data[index]['patient_password'].toString(), style: Theme
                              //     .of(context)
                              //     .textTheme
                              //     .titleMedium
                              // ),
                              // new SizedBox(height: 6.0),
                              //  new Text("Username:"+" "+data[index]['patient_username'].toString(), style: Theme
                              //     .of(context)
                              //     .textTheme
                              //     .titleMedium
                              // ),
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
