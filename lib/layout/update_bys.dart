// import 'package:flutter/material.dart';
// class edit_pro_bystander extends StatefulWidget {
//   const edit_pro_bystander({Key? key}) : super(key: key);

//   @override
//   State<edit_pro_bystander> createState() => _edit_pro_bystanderState();
// }

// class _edit_pro_bystanderState extends State<edit_pro_bystander> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('update bystander',style:new TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
//       ) ,backgroundColor: Color.fromARGB(255, 57, 154, 234),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         color: Colors.white,
//         child: Center(
//           child: SingleChildScrollView(
//             child:Form(
//               key:_formKey
//             child: Column(children: [
//               _buildTextField(
//                     label: 'Username',
//                     hint: 'Enter your username',
//                     icon: Icons.person,
//                     onSaved: (value) => _username = value,
//                     validator: (value) => value!.isEmpty ? 'Username is required' : null,
//                   ),
//                   _buildTextField(
//                     label: 'Password',
//                     hint: 'Enter your password',
//                     icon: Icons.lock,
//                     obscureText: true,
//                     onSaved: (value) => _password = value,
//                     validator: (value) => value!.isEmpty ? 'Password is required' : null,
//                   ),
//                   _buildTextField(
//                     label: 'Name',
//                     hint: 'Enter bystander name',
//                     icon: Icons.person,
//                     onSaved: (value) => _name = value,
//                     validator: (value) => value!.isEmpty ? 'Name is required' : null,
//                   ),
//                   _buildTextField(
//                     label: 'Relation',
//                     hint: 'Relation between patient and you',
//                     icon: Icons.people,
//                     onSaved: (value) => _relation = value,
//                     validator: (value) => value!.isEmpty ? 'Relation is required' : null,
//                   ),
//                   _buildTextField(
//                     label: 'Gender',
//                     hint: 'Enter your gender',
//                     icon: Icons.transgender,
//                     onSaved: (value) => _gender = value,
//                     validator: (value) => value!.isEmpty ? 'Gender is required' : null,
//                   ),
//                   _buildTextField(
//                     label: 'Phone Number',
//                     hint: 'Enter your phone number',
//                     icon: Icons.call,
//                     onSaved: (value) => _phone = value,
//                     validator: (value) => value!.isEmpty ? 'Phone number is required' : null,
//                   ),
//                   _buildTextField(
//                     label: 'Age',
//                     hint: 'Enter your age',
//                     icon: Icons.cake,
//                     onSaved: (value) => _age = value,
//                     validator: (value) => value!.isEmpty ? 'Age is required' : null,
//                   ),
//                   _buildTextField(
//                     label: 'Blood Group',
//                     hint: 'Enter your blood group',
//                     icon: Icons.bloodtype,
//                     onSaved: (value) => _bloodGroup = value,
//                     validator: (value) => value!.isEmpty ? 'Blood group is required' : null,
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ElevatedButton(
//                         onPressed: _submit,
//                         child: Text('Register'),
//                         style: ElevatedButton.styleFrom(
//                           primary: Color.fromARGB(255, 57, 154, 234),
//                           onPrimary: Colors.white,
//                           padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//                         ),
//                       ),
//                       ElevatedButton(
//                         onPressed: _clear,
//                         child: Text('Clear'),
//                         style: ElevatedButton.styleFrom(
//                           primary: Colors.grey,
//                           onPrimary: Colors.white,
//                           padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//                         ),
//                       ),
//                     ],
//                   ),
//             ]
//             ),
//           ),
//         ),
//       ),
//     );
    
    
//   }
// }


// import 'package:flutter/material.dart';

// class edit_pro_bystander extends StatefulWidget {
//   const edit_pro_bystander({Key? key}) : super(key: key);

//   @override
//   State<edit_pro_bystander> createState() => _RegisterBysState();
// }

// class _RegisterBysState extends State<edit_pro_bystander> {
//   final _formKey = GlobalKey<FormState>();
//   String? _username, _password, _name, _relation, _gender, _phone, _age, _bloodGroup;

//   void _submit() {
//     if (_formKey.currentState?.validate() ?? false) {
//       _formKey.currentState?.save();
//       // Handle the registration logic here, e.g., API call
//       print('Username: $_username');
//       print('Password: $_password');
//       print('Name: $_name');
//       print('Relation: $_relation');
//       print('Gender: $_gender');
//       print('Phone: $_phone');
//       print('Age: $_age');
//       print('Blood Group: $_bloodGroup');
//       // Add your API call here
//     }
//   }

//   void _clear() {
//     _formKey.currentState?.reset();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Bystander Registration',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Color.fromARGB(255, 57, 154, 234),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         color: Colors.white,
//         child: Center(
//           child: SingleChildScrollView(
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   _buildTextField(
//                     label: 'Username',
//                     hint: 'Enter your username',
//                     icon: Icons.person,
//                     onSaved: (value) => _username = value,
//                     validator: (value) => value!.isEmpty ? 'Username is required' : null,
//                   ),
//                   _buildTextField(
//                     label: 'Password',
//                     hint: 'Enter your password',
//                     icon: Icons.lock,
//                     obscureText: true,
//                     onSaved: (value) => _password = value,
//                     validator: (value) => value!.isEmpty ? 'Password is required' : null,
//                   ),
//                   _buildTextField(
//                     label: 'Name',
//                     hint: 'Enter bystander name',
//                     icon: Icons.person,
//                     onSaved: (value) => _name = value,
//                     validator: (value) => value!.isEmpty ? 'Name is required' : null,
//                   ),
//                   _buildTextField(
//                     label: 'Relation',
//                     hint: 'Relation between patient and you',
//                     icon: Icons.people,
//                     onSaved: (value) => _relation = value,
//                     validator: (value) => value!.isEmpty ? 'Relation is required' : null,
//                   ),
//                   _buildTextField(
//                     label: 'Gender',
//                     hint: 'Enter your gender',
//                     icon: Icons.transgender,
//                     onSaved: (value) => _gender = value,
//                     validator: (value) => value!.isEmpty ? 'Gender is required' : null,
//                   ),
//                   _buildTextField(
//                     label: 'Phone Number',
//                     hint: 'Enter your phone number',
//                     icon: Icons.call,
//                     onSaved: (value) => _phone = value,
//                     validator: (value) => value!.isEmpty ? 'Phone number is required' : null,
//                   ),
//                   _buildTextField(
//                     label: 'Age',
//                     hint: 'Enter your age',
//                     icon: Icons.cake,
//                     onSaved: (value) => _age = value,
//                     validator: (value) => value!.isEmpty ? 'Age is required' : null,
//                   ),
//                   _buildTextField(
//                     label: 'Blood Group',
//                     hint: 'Enter your blood group',
//                     icon: Icons.bloodtype,
//                     onSaved: (value) => _bloodGroup = value,
//                     validator: (value) => value!.isEmpty ? 'Blood group is required' : null,
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ElevatedButton(
//                         onPressed: _submit,
//                         child: Text('Update'),
//                         style: ElevatedButton.styleFrom(
//                           primary: Color.fromARGB(255, 57, 154, 234),
//                           onPrimary: Colors.white,
//                           padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//                         ),
//                       ),
//                       ElevatedButton(
//                         onPressed: _clear,
//                         child: Text('Clear'),
//                         style: ElevatedButton.styleFrom(
//                           primary: Colors.grey,
//                           onPrimary: Colors.white,
//                           padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField({
//     required String label,
//     required String hint,
//     required IconData icon,
//     bool obscureText = false,
//     required FormFieldSetter<String> onSaved,
//     required FormFieldValidator<String> validator,
//   }) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       child: TextFormField(
//         obscureText: obscureText,
//         decoration: InputDecoration(
//           labelText: label,
//           hintText: hint,
//           prefixIcon: Icon(icon),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(20),
//             borderSide: BorderSide(color: Color.fromARGB(255, 57, 154, 234)),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(20),
//             borderSide: BorderSide(color: Color.fromARGB(255, 57, 154, 234)),
//           ),
//         ),
//         onSaved: onSaved,
//         validator: validator,
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'dart:convert';

// import 'package:medlens/layout/login.dart';

// class edit_pro_bystander extends StatefulWidget {
//   const edit_pro_bystander({Key? key}) : super(key: key);

//   @override
//   State<edit_pro_bystander> createState() => _edit_pro_bystanderState();
//   static var usid = "";
// }

// class _edit_pro_bystanderState extends State<edit_pro_bystander> {
//   late TextEditingController name,relation,age,num,gen,blood;
//   late List data;
//   bool isLoading = true;  // Track loading state

//   @override
//   void initState() {
//     super.initState();
//     name = TextEditingController();
//     relation = TextEditingController();
//     age = TextEditingController();
//     num = TextEditingController();
//     gen = TextEditingController();
//     blood = TextEditingController();
    
//     fetchUserData();
//   }

//   void fetchUserData() async {
//     var url = Uri.parse(login.url + "/bystander/cc_u/");
//     Response resp1 = await post(url, body: {
//       "usid": login.uid.toString(),
//     });
    
//     if (resp1.statusCode == 200) {
//       data = jsonDecode(resp1.body);
//       setState(() {
//         name.text = data[0]["bystander_name"].toString();
//         relation.text = data[0]["bystander_relation"].toString();
//         age.text = data[0]["bystander_age"].toString();
//         num.text = data[0]["bystander_contact_no"].toString();
//         gen.text = data[0]["bystander_gender"].toString();
//         blood.text = data[0]["bystander_blood_group"].toString();
//         isLoading = false; // Stop loading after data is fetched
//       });
//     } else {
//       // Handle error if response is not successful
//       setState(() {
//         isLoading = false;
//       });
//       print('Error fetching data: ${resp1.statusCode}');
//     }
//   }

//   void postData() async {
//     String url = login.url + "/bystander/uuu/";
//     var resp = await post(url, body: {
//       "usid": login.uid.toString(),
//       "bystander_name": name.text,
//       "bystander_relation": relation.text,
//       "bystander_age": age.text,
//       "bystander_contact_no": num.text,
//       "bystander_gender":gen.text,
//       "bystander_blood_group":blood.text,
//     });

//     if (resp.statusCode == 200) {
//       // Successfully updated
//       print('Profile updated successfully');
//       Navigator.of(context).pop(); // Navigate back after update
//     } else {
//       // Handle error if update fails
//       print('Failed to update profile: ${resp.statusCode}');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         // decoration: BoxDecoration(
//         //   gradient: LinearGradient(
//         //     begin: Alignment.topRight,
//         //     end: Alignment.bottomLeft,
//         //     colors: [
//         //       Color.fromARGB(255, 32, 26, 48),
//         //       Color.fromARGB(255, 32, 26, 48),
//         //     ],
//         //   ),
//         // ),
//         decoration: BoxDecoration(
//     image: DecorationImage(
//       image: AssetImage('asset/b.jpg'),
//       fit: BoxFit.cover,
//     )
// ),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   child: Text(
//                     "Update",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white,
//                   ),
//                   child: Column(
//                     children: [
//                       if (isLoading) 
//                         CircularProgressIndicator() // Show loading indicator while fetching data
//                       else ...[
//                         // Name input
//                         Padding(
//                           padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
//                           child: TextFormField(
//                             controller: name,
//                             decoration: InputDecoration(
//                               labelText: "Enter bystander name",
//                               prefixIcon: Icon(Icons.person),
//                             ),
//                           ),
//                         ),
//                         // Phone number input
                       
//                         // Address input
//                         Padding(
//                           padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
//                           child: TextFormField(
//                             controller: relation,
//                             decoration: InputDecoration(
//                               labelText: "Relation between paitent and you",
//                               prefixIcon: Icon(Icons.people),
//                             ),
//                           ),
//                         ),

//                          Padding(
//                           padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
//                           child: TextFormField(
//                             controller: age,
//                             decoration: InputDecoration(
//                               labelText: "Relation between paitent and you",
//                               prefixIcon: Icon(Icons.cake),
//                             ),
//                           ),
//                         ),

//                          Padding(
//                           padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
//                           child: TextFormField(
//                             controller: num,
//                             decoration: InputDecoration(
//                               labelText: " Enter your phone number",
//                               prefixIcon: Icon(Icons.call),
//                             ),
//                           ),
//                         ),

                        
//                         // Email input
//                         Padding(
//                           padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
//                           child: TextFormField(
//                             controller: gen ,
//                             decoration: InputDecoration(
//                               labelText: "gender",
//                               prefixIcon: Icon(Icons.generating_tokens),
//                             ),
//                           ),
//                         ),


//                          Padding(
//                           padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
//                           child: TextFormField(
//                             controller:blood,
//                             decoration: InputDecoration(
//                               labelText: "Enter your blood group",
//                               prefixIcon: Icon(Icons.bloodtype),
//                             ),
//                           ),
//                         ),
//                         // Update button

                        
//                         // Update button


//                         // Update button
//                         Padding(
//                           padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               postData();
//                             },
//                             style: ElevatedButton.styleFrom(
//                               primary: Colors.tealAccent, // Background color
//                             ),
//                             child: Text("Update"),
//                           ),
//                         ),
//                       ],
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

































import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:medlens/layout/login.dart';

import 'botnav_bys.dart';
import 'draw_bystander.dart';

class update_bys extends StatefulWidget {
  const update_bys({Key? key}) : super(key: key);

  @override
  State<update_bys> createState() => _update_bysState();
  static var usid = "";
}

class _update_bysState extends State<update_bys> {
  late TextEditingController bystander_name, bystander_relation, bystander_age, bystander_contact_no,bystander_gender,bystander_blood_group,field_bystander_username,bystander_password;
  late List data;
  bool isLoading = true;  // Track loading state

  @override
  void initState() {
    super.initState();
    bystander_name = TextEditingController();
    bystander_relation = TextEditingController();
    bystander_age = TextEditingController();
    bystander_contact_no = TextEditingController();
    bystander_gender = TextEditingController();
    bystander_blood_group = TextEditingController();
    field_bystander_username = TextEditingController();
    bystander_password = TextEditingController();


    fetchUserData();
  }

  void fetchUserData() async {
    var url = Uri.parse(login.url + "bystander/cc_u/");
    Response resp1 = await post(url, body: {
      "usid": login.uid.toString(),
    });
    
    if (resp1.statusCode == 200) {
      data = jsonDecode(resp1.body);
      setState(() {
        bystander_name.text = data[0]["bystander_name"].toString();
        bystander_relation.text = data[0]["bystander_relation"].toString();
        bystander_age.text = data[0]["bystander_age"].toString();
        bystander_contact_no.text = data[0]["bystander_contact_no"].toString();
        bystander_gender.text = data[0]["bystander_gender"].toString();
        bystander_blood_group.text = data[0]["bystander_blood_group"].toString();
        field_bystander_username.text = data[0]["field_bystander_username"].toString();
        bystander_password.text = data[0]["bystander_password"].toString();
        isLoading = false; // Stop loading after data is fetched
      });
    } else {
      // Handle error if response is not successful
      setState(() {
        isLoading = false;
      });
      print('Error fetching data: ${resp1.statusCode}');
    }
  }

  void postData() async {
    var url =Uri.parse( login.url + "bystander/uuu/");
    var resp = await post(url, body: {
      "usid": login.uid.toString(),
      "bystander_name": bystander_name.text,
      "bystander_relation": bystander_relation.text,
      "bystander_age": bystander_age.text,
      "bystander_contact_no": bystander_contact_no.text,
      "bystander_gender": bystander_gender.text,
      "bystander_blood_group": bystander_blood_group.text,
      "field_bystander_username": field_bystander_username.text,
      "bystander_password": bystander_password.text,
    });

    if (resp.statusCode == 200) {
      // Successfully updated
      print('Profile updated successfully');
      Navigator.of(context).pop(); // Navigate back after update
    } else {
      // Handle error if update fails
      print('Failed to update profile: ${resp.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            drawer: draw_bystander(),
      bottomNavigationBar: botnav_bys(),
      body: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topRight,
        //     end: Alignment.bottomLeft,
        //     colors: [
        //       Color.fromARGB(255, 32, 26, 48),
        //       Color.fromARGB(255, 32, 26, 48),
        //     ],
        //   ),
        // ),
        decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('asset/b.jpg'),
      fit: BoxFit.cover,
    )
),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Text(
                    "Update",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      if (isLoading) 
                        CircularProgressIndicator() // Show loading indicator while fetching data
                      else ...[
                        // Name input
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                          child: TextFormField(
                            controller: bystander_name,
                            decoration: InputDecoration(
                              labelText: "Name",
                              prefixIcon: Icon(Icons.people),
                            ),
                          ),
                        ),
                        // Phone number input
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                          child: TextFormField(
                            controller: bystander_relation,
                            decoration: InputDecoration(
                              labelText: "Relation",
                              prefixIcon: Icon(Icons.family_restroom),
                            ),
                          ),
                        ),
                        // Address input
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                          child: TextFormField(
                            controller: bystander_age,
                            decoration: InputDecoration(
                              labelText: "Age",
                              prefixIcon: Icon(Icons.cake),
                            ),
                          ),
                        ),
                        // Email input
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                          child: TextFormField(
                            controller: bystander_contact_no,
                            decoration: InputDecoration(
                              labelText: "Contact Number",
                              prefixIcon: Icon(Icons.call),
                            ),
                          ),
                        ),
                        // U

                        //pdate button
                          Padding(
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                          child: TextFormField(
                            controller: bystander_gender,
                            decoration: InputDecoration(
                              labelText: "Gender",
                              prefixIcon: Icon(Icons.male),
                            ),
                          ),
                        ),
                        // U
                          Padding(
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                          child: TextFormField(
                            controller: field_bystander_username,
                            decoration: InputDecoration(
                              labelText: "Username",
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                          child: TextFormField(
                            controller: bystander_password,
                            decoration: InputDecoration(
                              labelText: "Password",
                              prefixIcon: Icon(Icons.lock),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                          child: TextFormField(
                            controller: bystander_blood_group,
                            decoration: InputDecoration(
                              labelText: "Enter your Blood Group",
                              prefixIcon: Icon(Icons.bloodtype),
                            ),
                          ),
                        ),
                        // U
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: ElevatedButton(
                            onPressed: () {
                              postData();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyan, // Background color
                            ),
                            child: Text("Update"),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




