
// import 'package:flutter/material.dart';

// class RegisterPt extends StatefulWidget {
//   const RegisterPt({Key? key}) : super(key: key);

//   @override
//   State<RegisterPt> createState() => _RegisterPtState();
// }

// class _RegisterPtState extends State<RegisterPt> {
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
//                               SnackBar(content: Text('Registered successfully!')),
//                             );
//                           }
//                         },
//                         child: Text('Register'),
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









//  code WITH design!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:medlens/layout/login.dart';

class register_pt extends StatefulWidget {
  const register_pt({Key? key}) : super(key: key);

  @override
  State<register_pt> createState() => _register_ptState();
}

class _register_ptState extends State<register_pt> {
  late TextEditingController usernameController,
      passwordController,
      nameController,
      ageController,
      phoneNumberController,
      heightController,
      weightController;
  String? gender = "Male";
  String? bloodGroup = "A+";
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  String? phoneValidationMessage;
  String? passwordErrorText;

  @override
  void initState() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    ageController = TextEditingController();
    phoneNumberController = TextEditingController();
    heightController = TextEditingController();
    weightController = TextEditingController();
    super.initState();
  }

  void postData() async {
    String url = login.url + "patient/post_pt/";
    await post(Uri.parse(url), body: {
      'patient_username': usernameController.text,
      'patient_password': passwordController.text,
      'patient_name': nameController.text,
      'patient_age': ageController.text,
      'patient_gender': gender!,
      'patient_contact_no': phoneNumberController.text,
      'patient_blood_group': bloodGroup!,
      'patient_height': heightController.text,
      'patient_weight': weightController.text,
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Patient registered successfully!')),
    );
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
          'Patient Registration',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.cyan,
      ),
      body:
       Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/ein.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child:  Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Username
              TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Email or Username',
                  hintText: 'Enter your email or username',
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

              // Password
              TextFormField(
                controller: passwordController,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  labelText: 'Password',
                  errorText: passwordController.text.isEmpty
                      ? null
                      : passwordErrorText,
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
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
                controller: nameController,
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

              // Age
              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Age',
                  hintText: 'Enter your age',
                  prefixIcon: const Icon(Icons.calendar_today),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
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
                controller: phoneNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  hintText: 'Enter your phone number',
                  errorText: phoneNumberController.text.isEmpty
                      ? null
                      : phoneValidationMessage,
                  prefixIcon: const Icon(Icons.call),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onChanged: validatePhoneNumber,
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
              const SizedBox(height: 16),

              // Height
              TextFormField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Height (cm)',
                  hintText: 'Enter your height in cm',
                  prefixIcon: const Icon(Icons.height),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(height: 16),

              // Weight
              TextFormField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Weight (kg)',
                  hintText: 'Enter your weight in kg',
                  prefixIcon: const Icon(Icons.line_weight),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(height: 32),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() &&
                      phoneValidationMessage == null &&
                      passwordErrorText == null) {
                    postData();
                  }
                },
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
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

// END OF THIS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!