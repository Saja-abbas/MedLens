
// import 'package:flutter/material.dart';

// class edit_pro_patient extends StatefulWidget {
//   const edit_pro_patient({Key? key}) : super(key: key);

//   @override
//   State<edit_pro_patient> createState() => _RegisterPtState();
// }

// class _RegisterPtState extends State<edit_pro_patient> {
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _ageController = TextEditingController();
//   final TextEditingController _genderController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _bloodGroupController = TextEditingController();
//   final TextEditingController _weightController = TextEditingController();
//   final TextEditingController _heightController = TextEditingController();

//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Patient Registration',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Color.fromARGB(255, 57, 154, 234),
//       ),
//       body: Container(
//         child: Center(
//           child: SingleChildScrollView(
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   _buildTextField(_usernameController, 'Username', 'Enter the username', Icons.person),
//                   _buildTextField(_passwordController, 'Password', 'Enter the password', Icons.lock, obscureText: true),
//                   _buildTextField(_nameController, 'Name', 'Enter your name', Icons.person),
//                   _buildTextField(_ageController, 'Age', 'Enter your age', Icons.cake, keyboardType: TextInputType.number),
//                   _buildTextField(_genderController, 'Gender', 'Enter your gender', Icons.transgender),
//                   _buildTextField(_phoneController, 'Phone Number', 'Enter the phone number', Icons.phone, keyboardType: TextInputType.phone),
//                   _buildTextField(_bloodGroupController, 'Blood Group', 'Enter your blood group', Icons.bloodtype),
//                   _buildTextField(_weightController, 'Weight', 'Enter your weight', Icons.line_weight, keyboardType: TextInputType.number),
//                   _buildTextField(_heightController, 'Height', 'Enter your height', Icons.height, keyboardType: TextInputType.number),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {
//                           if (_formKey.currentState!.validate()) {
//                             // Handle Update action here
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(content: Text('Updated successfully!')),
//                             );
//                           }
//                         },
//                         child: Text('Update'),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           // Clear all fields
//                           _usernameController.clear();
//                           _passwordController.clear();
//                           _nameController.clear();
//                           _ageController.clear();
//                           _genderController.clear();
//                           _phoneController.clear();
//                           _bloodGroupController.clear();
//                           _weightController.clear();
//                           _heightController.clear();
//                         },
//                         child: Text('Clear'),
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

//   Widget _buildTextField(TextEditingController controller, String label, String hint, IconData icon, {bool obscureText = false, TextInputType keyboardType = TextInputType.text}) {
//     return Container(
//       padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
//       child: TextFormField(
//         controller: controller,
//         obscureText: obscureText,
//         keyboardType: keyboardType,
//         decoration: InputDecoration(
//           labelText: label,
//           hintText: hint,
//           prefixIcon: Icon(icon),
//           border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//         ),
//         validator: (value) {
//           if (value == null || value.isEmpty) {
//             return 'Please enter $label';
//           }
//           return null;
//         },
//       ),
//     );
//   }
// }

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!           CODE HERE    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1




// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'dart:convert';

// import 'package:medlens/layout/login.dart';

// import 'botnav_patient.dart';
// import 'draw_patient.dart';

// class edit_pro_patient extends StatefulWidget {
//   const edit_pro_patient({Key? key}) : super(key: key);

//   @override
//   State<edit_pro_patient> createState() => _edit_pro_patientState();
//   static var usid = "";
// }

// class _edit_pro_patientState extends State<edit_pro_patient> {
//   late TextEditingController patient_name,pt_age,pt_gender,pt_number,patient_blood_group,patient_weight,patient_height;
//   late List data;
//   bool isLoading = true;  // Track loading state

//   @override
//   void initState() {
//     super.initState();
//     patient_name = TextEditingController();
//     pt_age = TextEditingController();
//     pt_gender = TextEditingController();
//     pt_number = TextEditingController();
//     patient_blood_group=TextEditingController(); 
//     patient_weight=TextEditingController();
//     patient_height=TextEditingController();

//     fetchUserData();
//   }

//   void fetchUserData() async {
//     var url = Uri.parse(login.url + "/patient/vv_update/");
//     Response resp1 = await post(url, body: {
//       "usid": login.uid.toString(),
//     });
    
//     if (resp1.statusCode == 200) {
//       data = jsonDecode(resp1.body);
//       setState(() {
//         patient_name.text = data[0]["patient_name"].toString();
//         pt_age.text = data[0]["patient_age"].toString();
//         pt_gender.text = data[0]["patient_gender"].toString();
//         pt_number.text = data[0]["patient_contact_no"].toString();
//         patient_blood_group.text=data[0]["patient_blood_group"].toString();
//         patient_weight.text=data[0]["patient_weight"].toString();
//         patient_height.text=data[0]["patient_height"].toString();
      
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
//     String url = login.url + "/patient/up/";
//     var resp = await post(url, body: {
//       "usid": login.uid.toString(),
//       "patient_name": patient_name.text,
//       "patient_age": pt_age.text,
//       "patient_gender": pt_gender.text,
//       "patient_contact_no": pt_number.text,
//       "patient_blood_group":patient_blood_group.text,
//       "patient_weight":patient_weight.text,
//       "patient_height":patient_height.text,
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
//        drawer: draw_patient(),
//       bottomNavigationBar: botnav_patient(),
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
//                             controller:patient_name,
//                             decoration: InputDecoration(
//                               labelText: " Enter paitent name",
//                               prefixIcon: Icon(Icons.people),
//                             ),
//                           ),
//                         ),
//                         // Phone number input
//                         Padding(
//                           padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
//                           child: TextFormField(
//                             controller: pt_age,
//                             decoration: InputDecoration(
//                               labelText: "Enter your age",
//                               prefixIcon: Icon(Icons.cake),
//                             ),
//                           ),
//                         ),
//                         // Address input
//                         Padding(
//                           padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
//                           child: TextFormField(
//                             controller: pt_gender,
//                             decoration: InputDecoration(
//                               labelText: "gender",
//                               prefixIcon: Icon(Icons.male),
//                               // prefixIcon: Icon(Icons.woman_rounded),
//                             ),
//                           ),
//                         ),
//                         // Email input
//                         Padding(
//                           padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
//                           child: TextFormField(
//                             controller:  pt_number,
//                             decoration: InputDecoration(
//                               labelText: " Enter your phone number",
//                               prefixIcon: Icon(Icons.call),
//                             ),
//                           ),
//                         ),

//                         Padding(
//                           padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
//                           child: TextFormField(
//                             controller:  patient_blood_group,
//                             decoration: InputDecoration(
//                               labelText: " Enter your blood group ",
//                               prefixIcon: Icon(Icons.bloodtype),
//                             ),
//                           ),
//                         ),

//                         Padding(
//                           padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
//                           child: TextFormField(
//                             controller:patient_weight,
//                             decoration: InputDecoration(
//                               labelText: " Enter your weight ",
//                               prefixIcon: Icon(Icons.line_weight),
//                             ),
//                           ),
//                         ),

//                         Padding(
//                           padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
//                           child: TextFormField(
//                             controller: patient_height,
//                             decoration: InputDecoration(
//                               labelText: " Enter your height",
//                               prefixIcon: Icon(Icons.height),
//                             ),
//                           ),
//                         ),

                      
//                         // Update button
//                         Padding(
//                           padding: EdgeInsets.symmetric(vertical: 8),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               postData();
//                             },
//                             style: ElevatedButton.styleFrom(
//                               primary: Colors.cyan, // Background color
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




// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!          CODE HERE UP   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:medlens/layout/login.dart';

import 'botnav_patient.dart';
import 'draw_patient.dart';

class EditProfilePatient extends StatefulWidget {
  const EditProfilePatient({Key? key}) : super(key: key);

  @override
  State<EditProfilePatient> createState() => _EditProfilePatientState();
  static var usid = "";
}

class _EditProfilePatientState extends State<EditProfilePatient> {
  late TextEditingController patientNameController,
      ageController,
      genderController,
      phoneNumberController,
      bloodGroupController,
      weightController,
      heightController;

  late List data;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    patientNameController = TextEditingController();
    ageController = TextEditingController();
    genderController = TextEditingController();
    phoneNumberController = TextEditingController();
    bloodGroupController = TextEditingController();
    weightController = TextEditingController();
    heightController = TextEditingController();

    fetchUserData();
  }

  void fetchUserData() async {
    var url = Uri.parse(login.url + "/patient/vv_update/");
    Response response = await post(url, body: {
      "usid": login.uid.toString(),
    });

    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      setState(() {
        patientNameController.text = data[0]["patient_name"].toString();
        ageController.text = data[0]["patient_age"].toString();
        genderController.text = data[0]["patient_gender"].toString();
        phoneNumberController.text = data[0]["patient_contact_no"].toString();
        bloodGroupController.text = data[0]["patient_blood_group"].toString();
        weightController.text = data[0]["patient_weight"].toString();
        heightController.text = data[0]["patient_height"].toString();

        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
      print('Error fetching data: ${response.statusCode}');
    }
  }

  void postData() async {
    var url =Uri.parse (login.url + "/patient/up/");
    var response = await post(url, body: {
      "usid": login.uid.toString(),
      "patient_name": patientNameController.text,
      "patient_age": ageController.text,
      "patient_gender": genderController.text,
      "patient_contact_no": phoneNumberController.text,
      "patient_blood_group": bloodGroupController.text,
      "patient_weight": weightController.text,
      "patient_height": heightController.text,
    });

    if (response.statusCode == 200) {
      print('Profile updated successfully');
      Navigator.of(context).pop();
    } else {
      print('Failed to update profile: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        backgroundColor: Colors.cyan,
      ),
      drawer: const draw_patient(),
      bottomNavigationBar: const botnav_patient(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/bg1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: isLoading
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          "Update Your Profile",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),

                        // Name
                        buildTextField(
                          controller: patientNameController,
                          label: "Patient Name",
                          icon: Icons.person,
                        ),

                        // Age
                        buildTextField(
                          controller: ageController,
                          label: "Age",
                          icon: Icons.cake,
                        ),

                        // Gender
                        buildTextField(
                          controller: genderController,
                          label: "Gender",
                          icon: Icons.wc,
                        ),

                        // Phone Number
                        buildTextField(
                          controller: phoneNumberController,
                          label: "Phone Number",
                          icon: Icons.phone,
                          keyboardType: TextInputType.phone,
                        ),

                        // Blood Group
                        buildTextField(
                          controller: bloodGroupController,
                          label: "Blood Group",
                          icon: Icons.bloodtype,
                        ),

                        // Weight
                        buildTextField(
                          controller: weightController,
                          label: "Weight (kg)",
                          icon: Icons.line_weight,
                          keyboardType: TextInputType.number,
                        ),

                        // Height
                        buildTextField(
                          controller: heightController,
                          label: "Height (cm)",
                          icon: Icons.height,
                          keyboardType: TextInputType.number,
                        ),

                        const SizedBox(height: 20),

                        // Submit Button
                        ElevatedButton(
                          onPressed: postData,
                          style: ElevatedButton.styleFrom(

                            shadowColor: Colors.cyan,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 15),
                          ),
                          child: const Text(
                            "Update",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  Widget buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
