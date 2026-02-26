import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:medlens/layout/login.dart';


class Forget extends StatefulWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  late TextEditingController username;
  var data = '';

  @override
  void initState() {
    super.initState();
    username = TextEditingController();
  }

  Future<void> postdata() async {
    var url = login.url+"/login/forget_pswd/";
    var resp = await http.post(
      Uri.parse(url),
      body: {
        "username": username.text,
      },
    );

    if (resp.statusCode == 200) {
      setState(() {
        data = jsonDecode(resp.body)['password'];
      });
    } else {
      setState(() {
        data = 'Failed to retrieve password';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 800,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 32, 26, 48),
              ),
              child: Column(
                children: [
                  Container(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 200, 20),
                    child: Text(
                      "Forget Password",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSams',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 150, 10),
                    child: Text(
                      "",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'OpenSams',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                    child: TextFormField(
                      controller: username,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.blueGrey,
                        ),
                        fillColor: Colors.white10,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 60,
                    padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.tealAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        postdata();
                      },
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 15,
                  ),
                  Text(
                    data,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}