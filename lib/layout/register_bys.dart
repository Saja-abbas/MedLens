// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:medlens/layout/login.dart';

// class register_bys extends StatefulWidget {
//   const register_bys({Key? key}) : super(key: key);

//   @override
//   State<register_bys> createState() => _register_bysState();
// }

// class _register_bysState extends State<register_bys> {
//   late TextEditingController username,password,name,relation,gender,phonenumber,age,bloodGroup;
//   @override
//   void initState(){
//     username=TextEditingController();
//     password=TextEditingController();
//     name=TextEditingController();
//     relation=TextEditingController();
//     gender=TextEditingController();
//     phonenumber=TextEditingController();
//     age=TextEditingController();
//     bloodGroup=TextEditingController();
//     super.initState();
//   }

//   void postdata()async{
//     String url=login.url+"bystander/post_bys/";
//     var resp=await post(url,body:{
//       'field_bystander_username':username.text.toString(),
//       'bystander_password':password.text.toString(),
//       'bystander_name':name.text.toString(),
//       'bystander_relation':relation.text.toString(),
//       'bystander_gender':gender.text.toString(),
//       'bystander_contact_no':phonenumber.text.toString(),
//       'bystander_age':age.text.toString(),
//       'bystander_blood_group':bloodGroup.text.toString()



//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Bystander registration',style:new TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
//       ) ,backgroundColor: Color.fromARGB(255, 57, 154, 234),
//       ),
//       body: Container(
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(children: [
//               Container(
//                 padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                 child: TextFormField(
//                   controller: username,
//                   decoration: InputDecoration(
//                     labelText: 'USERNAME',
//                     hintText: 'Enter the username',
//                     prefixIcon: Icon(Icons.person),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


//                   ),

//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                 child: TextFormField(
//                   controller: password,
//                   decoration: InputDecoration(
//                     labelText: 'PASSWORD',
//                     hintText: 'Enter the password',
//                     prefixIcon: Icon(Icons.lock),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


//                   ),

//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                 child: TextFormField(
//                   controller: name,
//                   decoration: InputDecoration(
//                     labelText: 'NAME',
//                     hintText: 'Enter bystander name',
//                     prefixIcon: Icon(Icons.person),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


//                   ),

//                 ),
//               ),

//               Container(
//                 padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                 child: TextFormField(
//                   controller: relation,
//                   decoration: InputDecoration(
//                     labelText: 'RELATION',
//                     hintText: 'Relation between paitent and you',
//                     prefixIcon: Icon(Icons.people),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


//                   ),

//                 ),
//               ),


//               Container(
//                 padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                 child: TextFormField(
//                   controller: gender,
//                   decoration: InputDecoration(
//                     labelText: 'GENDER',
//                     hintText: 'Gender    ',
//                     prefixIcon: Icon(Icons.generating_tokens),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


//                   ),

//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                 child: TextFormField(
//                   controller: phonenumber,
//                   decoration: InputDecoration(
//                     labelText: 'PHONE NUMBER',
//                     hintText: ' Enter your phone number',
//                     prefixIcon: Icon(Icons.call),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


//                   ),

//                 ),
//               ),

//              Container(
//                 padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                 child: TextFormField(
//                   controller: age,
//                   decoration: InputDecoration(
//                     labelText: 'AGE',
//                     hintText: 'Enter your age',
//                     prefixIcon: Icon(Icons.cake),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


//                   ),

//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//                 child: TextFormField(
//                   controller: bloodGroup,
//                   decoration: InputDecoration(
//                     labelText: 'BLOOD GROUP',
//                     hintText: 'Enter your blood group ',
//                     prefixIcon: Icon(Icons.bloodtype),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


//                   ),

//                 ),
//               ),
//                Container(
//                 padding: EdgeInsets.fromLTRB(90, 0, 98, 0),
//                 child: ElevatedButton
//                 (onPressed: (){
//                   postdata();


//                   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => register_bys()));
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blue,
//                 ),
//                 child: Text("SUBMIT"),
//                 ),
//               ),
              
      



//               Container(
//                 padding: EdgeInsets.fromLTRB(90, 0, 98, 0),
//                 child: ElevatedButton
//                 (onPressed: (){



//                   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => register_bys()));
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blue,
//                 ),
//                 child: Text("CLEAR"),
//                 ),
//               )

              
//             ]),
//           ),
//         ),
//       ),
//     );
    
//   }
// }



























// import 'package:flutter/material.dart';

// class register_bys extends StatefulWidget {
//   const register_bys({Key? key}) : super(key: key);

//   @override
//   State<register_bys> createState() => _register_bysState();
// }

// class _register_bysState extends State<register_bys> {
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
// import 'package:medlens/layout/login.dart';

// class register_bys extends StatefulWidget {
//   const register_bys({Key? key}) : super(key: key);
  

//   @override
//   State<register_bys> createState() => _register_bysState();
// }

// class _register_bysState extends State<register_bys> {
//   late TextEditingController username, password, name, otherRelation, phoneNumber, ageController;
//   String? relation = "Son";
//   String? gender = "Male";
//   String? bloodGroup = "A+";
//   final _formKey = GlobalKey<FormState>();

//   @override
//   void initState() {
//     username = TextEditingController();
//     password = TextEditingController();
//     name = TextEditingController();
//     otherRelation = TextEditingController();
//     phoneNumber = TextEditingController();
//     ageController = TextEditingController();
//     super.initState();
//   }

//   void postdata() async {
//     String url = login.url + "bystander/post_bys/";
//     var resp = await post(url, body: {
//       'field_bystander_username': username.text.toString(),
//       'bystander_password': password.text.toString(),
//       'bystander_name': name.text.toString(),
//       'bystander_relation': relation == "Other" ? otherRelation.text.toString() : relation!,
//       'bystander_gender': gender!,
//       'bystander_contact_no': phoneNumber.text.toString(),
//       'bystander_age': ageController.text.toString(),
//       'bystander_blood_group': bloodGroup!,
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Bystander Registration',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: const Color.fromARGB(255, 57, 154, 234),
//       ),
//       body: Form(
//         key: _formKey,
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 // Username
//                 TextFormField(
//                   controller: username,
//                   decoration: InputDecoration(
//                     labelText: 'Username',
//                     hintText: 'Enter your username',
//                     prefixIcon: const Icon(Icons.person),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty || value.length < 5) {
//                       return 'Username must be at least 5 characters long.';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 // Password
//                 TextFormField(
//                   controller: password,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     hintText: 'Enter your password',
//                     prefixIcon: const Icon(Icons.lock),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.length < 8) {
//                       return 'Password must be at least 8 characters long.';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),


//                 // Name
//                 TextFormField(
//                   controller: name,
//                   decoration: InputDecoration(
//                     labelText: 'Name',
//                     hintText: 'Enter your name',
//                     prefixIcon: const Icon(Icons.person),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Name is required.';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 // Relation
//                 DropdownButtonFormField<String>(
//                   value: relation,
//                   decoration: InputDecoration(
//                     labelText: 'Relation',
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                   ),
//                   items: const [
//                     DropdownMenuItem(value: 'Son', child: Text('Son')),
//                     DropdownMenuItem(value: 'Daughter', child: Text('Daughter')),
//                     DropdownMenuItem(value: 'Father', child: Text('Father')),
//                     DropdownMenuItem(value: 'Mother', child: Text('Mother')),
//                     DropdownMenuItem(value: 'Uncle', child: Text('Uncle')),
//                     DropdownMenuItem(value: 'Aunt', child: Text('Aunt')),
//                     DropdownMenuItem(value: 'Grandmother', child: Text('Grandmother')),
//                     DropdownMenuItem(value: 'Grandfather', child: Text('Grandfather')),
//                     DropdownMenuItem(value: 'Grandson', child: Text('Grandson')),
//                     DropdownMenuItem(value: 'Granddaughter', child: Text('Granddaughter')),
//                     DropdownMenuItem(value: 'Neighbour', child: Text('Neighbour')),
//                     DropdownMenuItem(value: 'Son-in-law', child: Text('Son-in-law')),
//                     DropdownMenuItem(value: 'Daughter-in-law', child: Text('Daughter-in-law')),
//                     DropdownMenuItem(value: 'Wife', child: Text('Wife')),
//                     DropdownMenuItem(value: 'Husband', child: Text('Husband')),
//                     DropdownMenuItem(value: 'Other', child: Text('Other')),
//                   ],
//                   onChanged: (value) {
//                     setState(() {
//                       relation = value;
//                     });
//                   },
//                 ),
//                 if (relation == "Other")
//                   Padding(
//                     padding: const EdgeInsets.only(top: 16),
//                     child: TextFormField(
//                       controller: otherRelation,
//                       decoration: InputDecoration(
//                         labelText: 'Specify Relation',
//                         hintText: 'Enter relation',
//                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                       ),
//                       validator: (value) {
//                         if (relation == "Other" && (value == null || value.isEmpty)) {
//                           return 'Please specify the relation.';
//                         }
//                         return null;
//                       },
//                     ),
//                   ),
//                 const SizedBox(height: 16),
//                 // Gender
//                 Row(
//                   children: [
//                     const Text('Gender:'),
//                     Expanded(
//                       child: ListTile(
//                         title: const Text('Male'),
//                         leading: Radio<String>(
//                           value: 'Male',
//                           groupValue: gender,
//                           onChanged: (value) {
//                             setState(() {
//                               gender = value;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: ListTile(
//                         title: const Text('Female'),
//                         leading: Radio<String>(
//                           value: 'Female',
//                           groupValue: gender,
//                           onChanged: (value) {
//                             setState(() {
//                               gender = value;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: ListTile(
//                         title: const Text('Other'),
//                         leading: Radio<String>(
//                           value: 'Other',
//                           groupValue: gender,
//                           onChanged: (value) {
//                             setState(() {
//                               gender = value;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16),
//                 // Phone Number
//                 TextFormField(
//                   controller: phoneNumber,
//                   keyboardType: TextInputType.phone,
//                   decoration: InputDecoration(
//                     labelText: 'Phone Number',
//                     hintText: 'Enter your phone number',
//                     prefixIcon: const Icon(Icons.call),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.length != 10 || !RegExp(r'^\d+$').hasMatch(value)) {
//                       return 'Enter a valid 10-digit phone number.';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 // Age
//                 TextFormField(
//                   controller: ageController,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     labelText: 'Age',
//                     hintText: 'Enter your age',
//                     prefixIcon: const Icon(Icons.cake),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                   ),
//                   validator: (value) {
//                     if (value == null || int.tryParse(value) == null || int.parse(value) <= 0) {
//                       return 'Enter a valid age.';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 // Blood Group
//                 DropdownButtonFormField<String>(
//                   value: bloodGroup,
//                   decoration: InputDecoration(
//                     labelText: 'Blood Group',
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                   ),
//                   items: const [
//                     DropdownMenuItem(value: 'A+', child: Text('A+')),
//                     DropdownMenuItem(value: 'A-', child: Text('A-')),
//                     DropdownMenuItem(value: 'B+', child: Text('B+')),
//                     DropdownMenuItem(value: 'B-', child: Text('B-')),
//                     DropdownMenuItem(value: 'AB+', child: Text('AB+')),
//                     DropdownMenuItem(value: 'AB-', child: Text('AB-')),
//                     DropdownMenuItem(value: 'O+', child: Text('O+')),
//                     DropdownMenuItem(value: 'O-', child: Text('O-')),
//                   ],
//                   onChanged: (value) {
//                     setState(() {
//                       bloodGroup = value;
//                     });
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 // Submit Button
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       postdata();
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(content: Text('Form Submitted')),
//                       );
//                     }
//                   },
//                   style: ElevatedButton.styleFrom(primary: Colors.blue),
//                   child: const Text("SUBMIT"),
//                 ),
//               ],
            
// ),
//           ),
//         ),
//       ),
//     );
//   }
// }


































// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:medlens/layout/login.dart';

// class register_bys extends StatefulWidget {
//   const register_bys({Key? key}) : super(key: key);

//   @override
//   State<register_bys> createState() => _register_bysState();
// }

// class _register_bysState extends State<register_bys> {
//   List dropList =[
//     {"patient_id":0, "patient_name": "<Select>"},
//     // {"edpt_id":1, "name": "<two>"},
//   ];
//   var fkey=GlobalKey<FormState>();
//   var val=true;
//   var dropdownValue = "";
//   // late TextEditingController details,type,fee;
//   void gendrop() async {
//     String url = login.url+"patient/regggg/";
//     var resp = await get(url);
//     print(resp.body);
//     setState(() {
//       dropList = jsonDecode(resp.body);
//     });
//   }
//   late TextEditingController username,
//       password,
//       name,
//       otherRelation,
//       phoneNumber,
//       ageController;
//   String? relation = "Son";
//   String? gender = "Male";
//   String? bloodGroup = "A+";
//   final _formKey = GlobalKey<FormState>();

//   bool isPasswordValid = false;
//   bool hasUppercase = false;
//   bool hasNumber = false;
//   bool hasSpecialCharacter = false;
//   bool passwordLengthValid = false;

//   String? phoneValidationMessage = '';

//   String? passwordErrorText = '';

//   @override
//   void initState() {
//     username = TextEditingController();
//     password = TextEditingController();
//     name = TextEditingController();
//     otherRelation = TextEditingController();
//     phoneNumber = TextEditingController();
//     ageController = TextEditingController();
//     super.initState();
//   }

//   void postdata() async {
//     String url = login.url + "bystander/post_bys/";
//     var resp = await post(url, body: {
//       'field_bystander_username': username.text.toString(),
//       'bystander_password': password.text.toString(),
//       'bystander_name': name.text.toString(),
//       'bystander_relation': relation == "Other" ? otherRelation.text.toString() : relation!,
//       'bystander_gender': gender!,
//       'bystander_contact_no': phoneNumber.text.toString(),
//       'bystander_age': ageController.text.toString(),
//       'bystander_blood_group': bloodGroup!,
//       'pid':dropdownValue
//     });
//   }

//   void validatePassword(String value) {
//     if (value.isEmpty) {
//       passwordErrorText = null;
//     } else if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
//       passwordErrorText = "Password must contain at least one uppercase letter.";
//     } else if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
//       passwordErrorText = "Password must contain at least one digit.";
//     } else if (!RegExp(r'(?=.[@$!%?&#])').hasMatch(value)) {
//       passwordErrorText = "Password must contain at least one special character.";
//     } else if (value.length < 8) {
//       passwordErrorText = "Password must be at least 8 characters long.";
//     } else {
//       passwordErrorText = null;
//     }
//     setState(() {});
//   }

//   void validatePhoneNumber(String value) {
//     setState(() {
//       // If empty, don't show validation feedback yet
//       if (value.isEmpty) {
//         phoneValidationMessage = null;
//       }
//       // Check if any non-digit character is entered
//       else if (!RegExp(r'^\d*$').hasMatch(value)) {
//         phoneValidationMessage = 'Only digits are allowed.';
//       }
//       // If the length is greater than 10, keep it at 10
//       else if (value.length > 10 || value.length < 10) {
//         phoneValidationMessage = 'Phone number must be exactly 10 digits.';
//       }
//       // If exactly 10 digits, it's valid
//       else if (value.length == 10) {
//         phoneValidationMessage = null;
//       } else {
//         phoneValidationMessage = '';
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     gendrop();
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Bystander Registration',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: const Color.fromARGB(255, 57, 154, 234),
//       ),
//       body: Form(
//         key: _formKey,
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 // Username
//                 TextFormField(
//                   controller: username,
//                   decoration: InputDecoration(
//                     labelText: 'Username',
//                     hintText: 'Enter your username',
//                     prefixIcon: const Icon(Icons.person),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty || value.length < 5) {
//                       return 'Username must be at least 5 characters long.';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 // Password
//                 TextFormField(
//                   controller: password,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     errorText: password.text.isEmpty ? null : passwordErrorText,
//                     hintText: 'Enter your password',
//                     prefixIcon: const Icon(Icons.lock),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   onChanged: validatePassword,

//                   // validator: (value) {
//                   //   if (value == null || value.length < 8) {
//                   //     return 'Password must be at least 8 characters long.';
//                   //   }
//                   //   return null;
//                   // },
//                 ),
//                 const SizedBox(height: 16),
//                 // Name
//                 TextFormField(
//                   controller: name,
//                   decoration: InputDecoration(
//                     labelText: 'Name',
//                     hintText: 'Enter your name',
//                     prefixIcon: const Icon(Icons.person),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Name is required.';
//                     }
//                     return null;
//                   },
//                 ),

//               Container( //dropdown
//                           padding: EdgeInsets.fromLTRB(20, 0, 20, 20), //3rd



//                           // width: 350.0,
//                           decoration: BoxDecoration(
//                               // borderRadius: BorderRadius.circular(20),
//                               // border: Border.all(color: Colors.black)
//                           ),

//                           child: DropdownButtonFormField(
//                               hint: Text("Select the Patient"),
//                               onChanged: ( newValue) {
//                                 setState(() {
//                                   dropdownValue = newValue.toString();
//                                   print(dropdownValue);
//                                 });
//                               },
//                               items: dropList.map((item) => DropdownMenuItem(child: Text(item['patient_name'].toString()),value:item['patient_id'].toString(),)).toList()
//                           )

//                       ),



//                 const SizedBox(height: 16),
//                 // Relation
//                 DropdownButtonFormField<String>(
//                   value: relation,
//                   decoration: InputDecoration(
//                     labelText: 'Relation',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   items: const [
//                     DropdownMenuItem(value: 'Son', child: Text('Son')),
//                     DropdownMenuItem(
//                         value: 'Daughter', child: Text('Daughter')),
//                     DropdownMenuItem(value: 'Father', child: Text('Father')),
//                     DropdownMenuItem(value: 'Mother', child: Text('Mother')),
//                     DropdownMenuItem(value: 'Uncle', child: Text('Uncle')),
//                     DropdownMenuItem(value: 'Aunt', child: Text('Aunt')),
//                     DropdownMenuItem(
//                         value: 'Grandmother', child: Text('Grandmother')),
//                     DropdownMenuItem(
//                         value: 'Grandfather', child: Text('Grandfather')),
//                     DropdownMenuItem(
//                         value: 'Grandson', child: Text('Grandson')),
//                     DropdownMenuItem(
//                         value: 'Granddaughter', child: Text('Granddaughter')),
//                     DropdownMenuItem(
//                         value: 'Neighbour', child: Text('Neighbour')),
//                     DropdownMenuItem(
//                         value: 'Son-in-law', child: Text('Son-in-law')),
//                     DropdownMenuItem(
//                         value: 'Daughter-in-law',
//                         child: Text('Daughter-in-law')),
//                     DropdownMenuItem(value: 'Wife', child: Text('Wife')),
//                     DropdownMenuItem(value: 'Husband', child: Text('Husband')),
//                     DropdownMenuItem(value: 'Other', child: Text('Other')),
//                   ],
//                   onChanged: (value) {
//                     setState(() {
//                       relation = value;
//                     });
//                   },
//                 ),
//                 if (relation == "Other")
//                   Padding(
//                     padding: const EdgeInsets.only(top: 16),
//                     child: TextFormField(
//                       controller: otherRelation,
//                       decoration: InputDecoration(
//                         labelText: 'Specify Relation',
//                         hintText: 'Enter relation',
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                       ),
//                       validator: (value) {
//                         if (relation == "Other" &&
//                             (value == null || value.isEmpty)) {
//                           return 'Please specify the relation.';
//                         }
//                         return null;
//                       },
//                     ),
//                   ),
//                 const SizedBox(height: 16),
//                 // Gender
//                 Row(
//                   children: [
//                     const Text('Gender:'),
//                     Expanded(
//                       child: ListTile(
//                         title: const Text('Male'),
//                         leading: Radio<String>(
//                           value: 'Male',
//                           groupValue: gender,
//                           onChanged: (value) {
//                             setState(() {
//                               gender = value;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: ListTile(
//                         title: const Text('Female'),
//                         leading: Radio<String>(
//                           value: 'Female',
//                           groupValue: gender,
//                           onChanged: (value) {
//                             setState(() {
//                               gender = value;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: ListTile(
//                         title: const Text('Other'),
//                         leading: Radio<String>(
//                           value: 'Other',
//                           groupValue: gender,
//                           onChanged: (value) {
//                             setState(() {
//                               gender = value;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16),
//                 // Phone Number
//                 TextFormField(
//                   controller: phoneNumber,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     labelText: 'Phone Number',
//                     hintText: 'Enter your phone number',
//                     errorText: phoneNumber.text.isEmpty
//                         ? null
//                         : phoneValidationMessage,
//                     prefixIcon: const Icon(Icons.call),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   onChanged: (value) {
//                     validatePhoneNumber(value);
//                   },
//                   // validator: (value) {
//                   //   if (value == null || value.isEmpty) {
//                   //     return null;
//                   //   } else if (value.length != 10) {
//                   //     return 'Phone number must be exactly 10 digits.';
//                   //   } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
//                   //     return 'Only digits are allowed.';
//                   //   }
//                   //   return null;
//                   // },
//                 ),

//                 const SizedBox(height: 16),
//                 // Age
//                 TextFormField(
//                   controller: ageController,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     labelText: 'Age',
//                     hintText: 'Enter your age',
//                     prefixIcon: const Icon(Icons.cake),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   validator: (value) {
//                     if (value == null ||
//                         int.tryParse(value) == null ||
//                         int.parse(value) <= 0) {
//                       return 'Enter a valid age.';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 // Blood Group
//                 DropdownButtonFormField<String>(
//                   value: bloodGroup,
//                   decoration: InputDecoration(
//                     labelText: 'Blood Group',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   items: const [
//                     DropdownMenuItem(value: 'A+', child: Text('A+')),
//                     DropdownMenuItem(value: 'B+', child: Text('B+')),
//                     DropdownMenuItem(value: 'O+', child: Text('O+')),
//                     DropdownMenuItem(value: 'AB+', child: Text('AB+')),
//                     DropdownMenuItem(value: 'A-', child: Text('A-')),
//                     DropdownMenuItem(value: 'B-', child: Text('B-')),
//                     DropdownMenuItem(value: 'O-', child: Text('O-')),
//                     DropdownMenuItem(value: 'AB-', child: Text('AB-')),
//                   ],
//                   onChanged: (value) {
//                     setState(() {
//                       bloodGroup = value;
//                     });
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                      postdata();
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(content: Text('Form Submitted')),
//                       );
//                     }
//                   },
//                    style: ElevatedButton.styleFrom(primary: Colors.blue),
//                   child: const Text("SUBMIT"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// 






// here the designed code!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:medlens/layout/login.dart';

// class register_bys extends StatefulWidget {
//   const register_bys({Key? key}) : super(key: key);

//   @override
//   State<register_bys> createState() => _register_bysState();
// }

// class _register_bysState extends State<register_bys> {
//   List dropList = [
//     {"patient_id": 0, "patient_name": "<Select>"},
//   ];
//   var dropdownValue = "";
//   late TextEditingController username,
//       password,
//       name,
//       otherRelation,
//       phoneNumber,
//       ageController;
//   String? relation = "Son";
//   String? gender = "Male";
//   String? bloodGroup = "A+";
//   final _formKey = GlobalKey<FormState>();
//   String? phoneValidationMessage = '';
//   String? passwordErrorText = '';

//   @override
//   void initState() {
//     username = TextEditingController();
//     password = TextEditingController();
//     name = TextEditingController();
//     otherRelation = TextEditingController();
//     phoneNumber = TextEditingController();
//     ageController = TextEditingController();
//     super.initState();
//     gendrop();
//   }

//   void gendrop() async {
//     String url = login.url + "patient/regggg/";
//     var resp = await get(Uri.parse(url));
//     setState(() {
//       dropList = jsonDecode(resp.body);
//     });
//   }

//   void postdata() async {
//     String url = login.url + "bystander/post_bys/";
//     await post(Uri.parse(url), body: {
//       'field_bystander_username': username.text,
//       'bystander_password': password.text,
//       'bystander_name': name.text,
//       'bystander_relation': relation == "Other" ? otherRelation.text : relation!,
//       'bystander_gender': gender!,
//       'bystander_contact_no': phoneNumber.text,
//       'bystander_age': ageController.text,
//       'bystander_blood_group': bloodGroup!,
//       'pid': dropdownValue,
//     });
//   }

//   void validatePhoneNumber(String value) {
//     setState(() {
//       if (value.isEmpty) {
//         phoneValidationMessage = null;
//       } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
//         phoneValidationMessage = 'Phone number must be exactly 10 digits.';
//       } else {
//         phoneValidationMessage = null;
//       }
//     });
//   }

//   void validatePassword(String value) {
//     if (value.isEmpty) {
//       passwordErrorText = null;
//     } else if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
//       passwordErrorText = "Password must contain at least one uppercase letter.";
//     } else if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
//       passwordErrorText = "Password must contain at least one digit.";
//     } else if (!RegExp(r'(?=.*[@$!%*?&#])').hasMatch(value)) {
//       passwordErrorText = "Password must contain at least one special character.";
//     } else if (value.length < 8) {
//       passwordErrorText = "Password must be at least 8 characters long.";
//     } else {
//       passwordErrorText = null;
//     }
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Bystander Registration',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: const Color.fromARGB(255, 57, 154, 234),
//       ),
//       body: Form(
//         key: _formKey,
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 // Username
//                 TextFormField(
//                   controller: username,
//                   decoration: InputDecoration(
//                     labelText: 'Email or Username',
//                     hintText: 'Enter your Email Id',
//                     prefixIcon: const Icon(Icons.person),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty || value.length < 5) {
//                       return 'Username must be at least 5 characters long.';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 // Password
//                 TextFormField(
//                   controller: password,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     errorText: password.text.isEmpty ? null : passwordErrorText,
//                     hintText: 'Enter your password',
//                     prefixIcon: const Icon(Icons.lock),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   onChanged: validatePassword,
//                 ),
//                 const SizedBox(height: 16),
//                 // Name
//                 TextFormField(
//                   controller: name,
//                   decoration: InputDecoration(
//                     labelText: 'Name',
//                     hintText: 'Enter your name',
//                     prefixIcon: const Icon(Icons.person),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Name is required.';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 // Select the Patient
//                 Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: DropdownButtonFormField(
//                     decoration: const InputDecoration(
//                       border: InputBorder.none,
//                       contentPadding: EdgeInsets.zero,
//                     ),
//                     hint: const Text("Select the Patient"),
//                     value: dropdownValue.isEmpty ? null : dropdownValue,
//                     onChanged: (newValue) {
//                       setState(() {
//                         dropdownValue = newValue.toString();
//                       });
//                     },
//                     items: dropList
//                         .map((item) => DropdownMenuItem(
//                               child: Text(item['patient_name'].toString()),
//                               value: item['patient_id'].toString(),
//                             ))
//                         .toList(),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 // Relation
//                 DropdownButtonFormField<String>(
//                   value: relation,
//                   decoration: InputDecoration(
//                     labelText: 'Relation',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   items: const [
//                     DropdownMenuItem(value: 'Son', child: Text('Son')),
//                     DropdownMenuItem(value: 'Daughter', child: Text('Daughter')),
//                     DropdownMenuItem(value: 'Father', child: Text('Father')),
//                     DropdownMenuItem(value: 'Mother', child: Text('Mother')),
//                     DropdownMenuItem(value: 'Uncle', child: Text('Uncle')),
//                     DropdownMenuItem(value: 'Aunt', child: Text('Aunt')),
//                     DropdownMenuItem(
//                         value: 'Grandmother', child: Text('Grandmother')),
//                     DropdownMenuItem(
//                         value: 'Grandfather', child: Text('Grandfather')),
//                     DropdownMenuItem(
//                         value: 'Grandson', child: Text('Grandson')),
//                     DropdownMenuItem(
//                         value: 'Granddaughter', child: Text('Granddaughter')),
//                     DropdownMenuItem(value: 'Neighbour', child: Text('Neighbour')),
//                     DropdownMenuItem(value: 'Other', child: Text('Other')),
//                   ],
//                   onChanged: (value) {
//                     setState(() {
//                       relation = value;
//                     });
//                   },
//                 ),
//                 if (relation == "Other")
//                   Padding(
//                     padding: const EdgeInsets.only(top: 16),
//                     child: TextFormField(
//                       controller: otherRelation,
//                       decoration: InputDecoration(
//                         labelText: 'Specify Relation',
//                         hintText: 'Enter relation',
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                       ),
//                       validator: (value) {
//                         if (relation == "Other" &&
//                             (value == null || value.isEmpty)) {
//                           return 'Please specify the relation.';
//                         }
//                         return null;
//                       },
//                     ),
//                   ),
//                 const SizedBox(height: 16),
//                 // Gender
//                 Row(
//                   children: [
//                     const Text('Gender:'),
//                     Expanded(
//                       child: ListTile(
//                         title: const Text('Male'),
//                         leading: Radio<String>(
//                           value: 'Male',
//                           groupValue: gender,
//                           onChanged: (value) {
//                             setState(() {
//                               gender = value;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: ListTile(
//                         title: const Text('Female'),
//                         leading: Radio<String>(
//                           value: 'Female',
//                           groupValue: gender,
//                           onChanged: (value) {
//                             setState(() {
//                               gender = value;
//                             });
//                           },
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16),
//                // Phone Number
//                 TextFormField(
//                   controller: phoneNumber,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     labelText: 'Phone Number',
//                     hintText: 'Enter your phone number',
//                     // errorText: phoneValidationMessage,
//                     errorText: phoneNumber.text.isEmpty ? null : phoneValidationMessage,
//                     prefixIcon: const Icon(Icons.call),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   onChanged: validatePhoneNumber,
//                 ),
//                 const SizedBox(height: 16),
                
              

//                 // Age
//                 TextFormField(
//                   controller: ageController,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     labelText: 'Age',
//                     hintText: 'Enter your age',
//                     prefixIcon: const Icon(Icons.calendar_today),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20),
//                         ),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Age is required.';
//                     }
//                     if (int.tryParse(value) == null ||
//                         int.tryParse(value)! <= 0) {
//                       return 'Age must be a valid positive number.';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 // Blood Group
//                 DropdownButtonFormField<String>(
//                   value: bloodGroup,
//                   decoration: InputDecoration(
//                     labelText: 'Blood Group',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   items: const [
//                     DropdownMenuItem(value: 'A+', child: Text('A+')),
//                     DropdownMenuItem(value: 'A-', child: Text('A-')),
//                     DropdownMenuItem(value: 'B+', child: Text('B+')),
//                     DropdownMenuItem(value: 'B-', child: Text('B-')),
//                     DropdownMenuItem(value: 'AB+', child: Text('AB+')),
//                     DropdownMenuItem(value: 'AB-', child: Text('AB-')),
//                     DropdownMenuItem(value: 'O+', child: Text('O+')),
//                     DropdownMenuItem(value: 'O-', child: Text('O-')),
//                   ],
//                   onChanged: (value) {
//                     setState(() {
//                       bloodGroup = value;
//                     });
//                   },
//                 ),
//                 const SizedBox(height: 32),
//                 // Submit Button
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate() &&
//                         phoneValidationMessage == null &&
//                         passwordErrorText == null) {
//                       postdata();
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(content: Text('Data submitted!')),
//                       );
//                     }
//                   },
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 40, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   child: const Text('Submit'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }




// end of the code!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!






// password icon updated code !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:medlens/layout/login.dart';

class register_bys extends StatefulWidget {
  const register_bys({Key? key}) : super(key: key);

  @override
  State<register_bys> createState() => _register_bysState();
}

class _register_bysState extends State<register_bys> {
  List dropList = [
    {"patient_id": 0, "patient_name": "<Select>"},
  ];
  var dropdownValue = "";
  late TextEditingController username,
      password,
      name,
      otherRelation,
      phoneNumber,
      ageController;
  String? relation = "Son";
  String? gender = "Male";
  String? bloodGroup = "A+";
  final _formKey = GlobalKey<FormState>();
  String? phoneValidationMessage = '';
  String? passwordErrorText = '';
  bool _isPasswordVisible = false; // This will control the visibility of the password

  @override
  void initState() {
    username = TextEditingController();
    password = TextEditingController();
    name = TextEditingController();
    otherRelation = TextEditingController();
    phoneNumber = TextEditingController();
    ageController = TextEditingController();
    super.initState();
    gendrop();
  }

  void gendrop() async {
    String url = login.url + "patient/regggg/";
    var resp = await get(Uri.parse(url));
    setState(() {
      dropList = jsonDecode(resp.body);
    });
  }

  void postdata() async {
    String url = login.url + "bystander/post_bys/";
    await post(Uri.parse(url), body: {
      'field_bystander_username': username.text,
      'bystander_password': password.text,
      'bystander_name': name.text,
      'bystander_relation': relation == "Other" ? otherRelation.text : relation!,
      'bystander_gender': gender!,
      'bystander_contact_no': phoneNumber.text,
      'bystander_age': ageController.text,
      'bystander_blood_group': bloodGroup!,
      'pid': dropdownValue,
    });
  }

  void validatePhoneNumber(String value) {
    setState(() {
      if (value.isEmpty) {
        phoneValidationMessage = null;
      } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
        phoneValidationMessage = 'Phone number must be exactly 10 digits.';
      } else {
        phoneValidationMessage = null;
      }
    });
  }

  void validatePassword(String value) {
    if (value.isEmpty) {
      passwordErrorText = null;
    } else if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
      passwordErrorText = "Password must contain at least one uppercase letter.";
    } else if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
      passwordErrorText = "Password must contain at least one digit.";
    } else if (!RegExp(r'(?=.*[@$!%*?&#])').hasMatch(value)) {
      passwordErrorText = "Password must contain at least one special character.";
    } else if (value.length < 8) {
      passwordErrorText = "Password must be at least 8 characters long.";
    } else {
      passwordErrorText = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bystander Registration',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor:Colors.cyan,
      ),


      
      
      body:
        Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/pin.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Username
                TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                    labelText: 'Email or Username',
                    hintText: 'Enter your Email Id',
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 5) {
                      return 'Username must be at least 5 characters long.';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                
                // Password with show/hide toggle
                TextFormField(
                  controller: password,
                  obscureText: !_isPasswordVisible, // Toggle visibility
                  decoration: InputDecoration(
                    labelText: 'Password',
                    errorText: password.text.isEmpty ? null : passwordErrorText,
                    hintText: 'Enter your password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible ? Icons.visibility : Icons.visibility_off, 
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible; // Toggle the password visibility
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onChanged: validatePassword,
                ),
                const SizedBox(height: 16),
                
                // Name
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Name is required.';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                
                // Select the Patient
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: DropdownButtonFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    hint: const Text("Select the Patient"),
                    value: dropdownValue.isEmpty ? null : dropdownValue,
                    onChanged: (newValue) {
                      setState(() {
                        dropdownValue = newValue.toString();
                      });
                    },
                    items: dropList
                        .map((item) => DropdownMenuItem(
                              child: Text(item['patient_name'].toString()),
                              value: item['patient_id'].toString(),
                            ))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 16),
                
                // Relation
                DropdownButtonFormField<String>(
                  value: relation,
                  decoration: InputDecoration(
                    labelText: 'Relation',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'Son', child: Text('Son')),
                    DropdownMenuItem(value: 'Daughter', child: Text('Daughter')),
                    DropdownMenuItem(value: 'Father', child: Text('Father')),
                    DropdownMenuItem(value: 'Mother', child: Text('Mother')),
                    DropdownMenuItem(value: 'Uncle', child: Text('Uncle')),
                    DropdownMenuItem(value: 'Aunt', child: Text('Aunt')),
                    DropdownMenuItem(value: 'Grandmother', child: Text('Grandmother')),
                    DropdownMenuItem(value: 'Grandfather', child: Text('Grandfather')),
                    DropdownMenuItem(value: 'Grandson', child: Text('Grandson')),
                    DropdownMenuItem(value: 'Granddaughter', child: Text('Granddaughter')),
                    DropdownMenuItem(value: 'Neighbour', child: Text('Neighbour')),
                    DropdownMenuItem(value: 'Other', child: Text('Other')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      relation = value;
                    });
                  },
                ),
                if (relation == "Other")
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: TextFormField(
                      controller: otherRelation,
                      decoration: InputDecoration(
                        labelText: 'Specify Relation',
                        hintText: 'Enter relation',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      validator: (value) {
                        if (relation == "Other" &&
                            (value == null || value.isEmpty)) {
                          return 'Please specify the relation.';
                        }
                        return null;
                      },
                    ),
                  ),
                const SizedBox(height: 16),
                
                // Gender
                Row(
                  children: [
                    const Text('Gender:'),
                    Expanded(
                      child: ListTile(
                        title: const Text('Male'),
                        leading: Radio<String>(
                          value: 'Male',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: const Text('Female'),
                        leading: Radio<String>(
                          value: 'Female',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                
                // Phone Number
                TextFormField(
                  controller: phoneNumber,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter your phone number',
                    errorText: phoneNumber.text.isEmpty ? null : phoneValidationMessage,
                    prefixIcon: const Icon(Icons.call),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onChanged: validatePhoneNumber,
                ),
                const SizedBox(height: 16),
                
                // Age
                TextFormField(
                  controller: ageController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Age',
                    hintText: 'Enter your age',
                    prefixIcon: const Icon(Icons.calendar_today),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Age is required.';
                    }
                    if (int.tryParse(value) == null ||
                        int.tryParse(value)! <= 0) {
                      return 'Age must be a valid positive number.';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                
                // Blood Group
                DropdownButtonFormField<String>(
                  value: bloodGroup,
                  decoration: InputDecoration(
                    labelText: 'Blood Group',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'A+', child: Text('A+')),
                    DropdownMenuItem(value: 'A-', child: Text('A-')),
                    DropdownMenuItem(value: 'B+', child: Text('B+')),
                    DropdownMenuItem(value: 'B-', child: Text('B-')),
                    DropdownMenuItem(value: 'AB+', child: Text('AB+')),
                    DropdownMenuItem(value: 'AB-', child: Text('AB-')),
                    DropdownMenuItem(value: 'O+', child: Text('O+')),
                    DropdownMenuItem(value: 'O-', child: Text('O-')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      bloodGroup = value;
                    });
                  },
                ),
                const SizedBox(height: 32),
                
                // Submit Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate() &&
                        phoneValidationMessage == null &&
                        passwordErrorText == null) {
                      postdata();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Data submitted!')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),

      ),
      
    ),
    );
    
  }
}







// end of this code!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




