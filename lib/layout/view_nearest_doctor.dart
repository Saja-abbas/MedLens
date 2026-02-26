import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:medlens/layout/login.dart';

class vw_nearest_loc extends StatefulWidget {
  const vw_nearest_loc({Key? key}) : super(key: key);

  @override
  State<vw_nearest_loc> createState() => _vw_nearest_locState();
}

class _vw_nearest_locState extends State<vw_nearest_loc> {
  late List data;

  late List outputList;
  var len=0;
  late TextEditingController filt;
  void List_function() async {
    var url = Uri.parse(login.url+"/doctor/ nearest/");
    Response resp1 = await get(url);

    this.setState(() {
      data = jsonDecode(resp1.body);
      outputList=data;
      len=outputList.length;
      print(len);
    });
    // print(resp1.body);
  }

  // void postdata(pid)async{
  //   var url1=Uri.parse("product/cart/");
  //   Response resp = await post(url1,body: {
  //     "p_id":pid
  //   });
  // }

  @override
  void initState(){
    List_function();
    filt=TextEditingController();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // backgroundColor: Colors.pinkAccent.shade200,
        title: Text(
          "Search Doctor By Nearset Place",
          style: new TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/ff.jpg'),
            fit: BoxFit.cover,
             )
        ),
        //  decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage('assets/hh.jpg'),
        //       fit: BoxFit.cover,
        //     )
        // ),
        child:SingleChildScrollView(
            child:
            Column(

              children: [
                TextFormField(
                  controller: filt,
                  onChanged: (data1){
                    if (data1!="")
                    {
                      setState(() {
                        outputList = data.where((o) => o['pincode'].contains(data1)).toList();
                        // outputList = data.where((o) => o['name']==data1).toList();
                      });
                    }
                    else
                    {
                      setState(() {
                        outputList=data;
                      });
                    }

                    // print(data);
                  },
                ),
                new ListView.builder(
                  shrinkWrap: true,
                  itemCount: outputList == null ? 0 : outputList.length,
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
                            print("tapped");//  tap funtion here
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
                              new Text("Doctor Name : "+" "+outputList[index]['doctor_name'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium,
                              ),
                              new SizedBox(height: 6.0),
                              new Text("Department : "+" "+outputList[index]['department_dr'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium,
                              ),
                              new SizedBox(height: 6.0),
                              new Text("Clinic Name : "+" "+outputList[index]['doctor_clinic_name'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium,
                              ),
                              new SizedBox(height: 6.0),
                              new Text("Medical Method : "+" "+outputList[index]['doctor_medical_method'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium,
                              ),
                              new SizedBox(height: 6.0),
                              new Text("Pincode : "+" "+outputList[index]['pincode'].toString(), style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleMedium,
                              ),
                              new SizedBox(height: 6.0),
                                      
              
                            ],
                          ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
        ),
      ),
    );
  }
}