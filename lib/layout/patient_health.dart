import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:medlens/layout/login.dart';
class patient_health extends StatefulWidget {
  const patient_health({Key? key}) : super(key: key);

  @override
  State<patient_health> createState() => _patient_healthState();
}

class _patient_healthState extends State<patient_health> {
  late TextEditingController pasthealth,allergy,sleeppattern,surgery,familyhistory,curtmedication,alcohol,smoking,actlvl,menstrualcycl,dietpln,consltdrnm,consultdrplc;
  @override
  void initState(){
    pasthealth=TextEditingController();
    allergy=TextEditingController();
    sleeppattern=TextEditingController();
    surgery=TextEditingController();
    familyhistory=TextEditingController();
    curtmedication=TextEditingController();
    alcohol=TextEditingController();
    smoking=TextEditingController();
    actlvl=TextEditingController();
    menstrualcycl=TextEditingController();
    dietpln=TextEditingController();
    consltdrnm=TextEditingController();
    consultdrplc=TextEditingController();
    super.initState();
  }

   void postdata()async{
    var url= Uri.parse (login.url+"patient_health/patient_health/");
    var resp=await post(url,body:{
      'past_health':pasthealth.text.toString(),
      'allergy':allergy.text.toString(),
      'sleep_pattern':sleeppattern.text.toString(),
      'surgery':surgery.text.toString(),
      'fam_health_history':familyhistory.text.toString(),
      'current_medication':curtmedication.text.toString(),
      'alcohol':alcohol.text.toString(),
      'smoking':smoking.text.toString(),
      'active_level':actlvl.text.toString(),
      'menstrual_cycle':menstrualcycl.text.toString(),
      'diet_plan':dietpln.text.toString(),
      'consultant_dr_name':consltdrnm.text.toString(),
      'consultdr_place':consultdrplc.text.toString(),


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Add Patient Helath',style:new TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
      ) ,backgroundColor: Color.fromARGB(255, 57, 154, 234),
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [

              Container(
                padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                child: TextFormField(
                  controller:pasthealth ,
                 
                  decoration: InputDecoration(
                    labelText: 'past health',
                    hintText: 'Include any chronic conditions or medical issuesexperienced. Essential for understanding healthhistory and personalized care.',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


                  ),

                ),
              ),

               Container(
                padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                child: TextFormField(
                   controller:allergy ,
                 
                  decoration: InputDecoration(
                    labelText: 'allergy',
                    hintText: 'List any allergies you have.',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


                  ),

                ),
              ),

               Container(
                padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                child: TextFormField(
                  controller:sleeppattern ,
                  decoration: InputDecoration(
                    labelText: 'sleep pattern',
                    hintText: 'daily sleep pattern',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


                  ),

                ),
              ),

               Container(
                padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                child: TextFormField(
                  controller: surgery,
                 
                  decoration: InputDecoration(
                    labelText: 'surgery',
                    hintText: 'List any major surgeries you have undergone',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


                  ),

                ),
              ),


               Container(
                padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                child: TextFormField(
                  controller: familyhistory,
                 
                  decoration: InputDecoration(
                    labelText: 'family history',
                    hintText: 'List any chronic diseases present in your familyhistory. This will help us to indicate the genetic risks.',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


                  ),

                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                child: TextFormField(
                  controller: curtmedication,
                 
                  decoration: InputDecoration(
                    labelText: ' current medication',
                    hintText: 'List any medications you are currently taking.',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


                  ),

                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                child: TextFormField(
                  controller: alcohol,
                 
                  decoration: InputDecoration(
                    labelText: ' alcohol',
                    hintText: 'A standard drink is equivalent to a regular can orbottle of beer, a typical serving (glass) of wine, or ashot of distilled spirits,',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


                  ),

                ),
              ),


              Container(
                padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                child: TextFormField(
                  controller: smoking,
                 
                  decoration: InputDecoration(
                    labelText: ' smoking',
                    hintText: 'A standard drink is equivalent to a regular can orbottle of beer, a typical serving (glass) of wine, or ashot of distilled spirits,',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


                  ),

                ),
              ),


              Container(
                padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                child: TextFormField(
                  controller: actlvl,
                 
                  decoration: InputDecoration(
                    labelText: ' active level',
                    hintText: 'Weekly physical activity level',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


                  ),

                ),
              ),


              Container(
                padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                child: TextFormField(
                  controller: menstrualcycl,
                 
                  decoration: InputDecoration(
                    labelText: ' menstrual cycle',
                    hintText: 'This information helps us understand hormonal health and potentially related conditions.',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


                  ),

                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                child: TextFormField(
                  controller: consltdrnm,
                 
                  decoration: InputDecoration(
                    labelText: ' consulting dr name',
                    hintText: 'This information helps us understand ',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


                  ),

                ),
              ),
               Container(
                padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                child: TextFormField(
                  controller: consultdrplc,
                 
                  decoration: InputDecoration(
                    labelText: ' consulting dr place',
                    hintText: 'This information helps us understand ',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


                  ),

                ),
              ),


               Container(
                padding: EdgeInsets.fromLTRB(90, 0, 98, 0),
                child: ElevatedButton
                (onPressed: (){
                  postdata();


                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => patient_health()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: Text("SUBMIT"),
                ),
              ),


            ]),
          ),
        ),
      ),
    );
    
  }
}


































// import 'package:flutter/material.dart';

// class PatientHealth extends StatefulWidget {
//   const PatientHealth({Key? key}) : super(key: key);

//   @override
//   State<PatientHealth> createState() => _PatientHealthState();
// }

// class _PatientHealthState extends State<PatientHealth> {
//   final TextEditingController username = TextEditingController();
//   final TextEditingController password = TextEditingController();
//   final TextEditingController contact = TextEditingController();
//   final TextEditingController height = TextEditingController();
//   final TextEditingController weight = TextEditingController();
//   final TextEditingController pastHealth = TextEditingController();
//   final TextEditingController allergy = TextEditingController();
//   final TextEditingController sleepPattern = TextEditingController();
//   final TextEditingController surgery = TextEditingController();
//   final TextEditingController familyHistory = TextEditingController();
//   final TextEditingController currentMedication = TextEditingController();
//   final TextEditingController alcohol = TextEditingController();
//   final TextEditingController smoking = TextEditingController();
//   final TextEditingController activeLevel = TextEditingController();
//   final TextEditingController menstrualCycle = TextEditingController();
//   final TextEditingController consultantDrName = TextEditingController();
//   final TextEditingController consultantDrPlace = TextEditingController();
  
//   String gender = 'Male'; // Default selected gender
//   String? bloodGroup; // Blood group selection
//   int age = 18; // Initial age for trending button
  
//   final _formKey = GlobalKey<FormState>();

//   void postData() {
//     if (_formKey.currentState!.validate()) {
//       // Post data to the server or perform other actions
//       print("Data Submitted Successfully");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Patient Health Registration',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: const Color(0xFF399AEA),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Username
//               TextFormField(
//                 controller: username,
//                 decoration: InputDecoration(
//                   labelText: 'Username',
//                   prefixIcon: const Icon(Icons.person),
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a username';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 10),

//               // Password
//               TextFormField(
//                 controller: password,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   prefixIcon: const Icon(Icons.lock),
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.length < 8) {
//                     return 'Password must be at least 8 characters long';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 10),

//               // Contact Number
//               TextFormField(
//                 controller: contact,
//                 keyboardType: TextInputType.phone,
//                 decoration: InputDecoration(
//                   labelText: 'Contact Number',
//                   prefixIcon: const Icon(Icons.phone),
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.length != 10) {
//                     return 'Enter a valid 10-digit contact number';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 10),

//               // Gender Selection
//               Row(
//                 children: [
//                   const Text('Gender: ', style: TextStyle(fontSize: 16)),
//                   Expanded(
//                     child: Row(
//                       children: [
//                         Radio(
//                           value: 'Male',
//                           groupValue: gender,
//                           onChanged: (value) {
//                             setState(() {
//                               gender = value.toString();
//                             });
//                           },
//                         ),
//                         const Text('Male'),
//                         Radio(
//                           value: 'Female',
//                           groupValue: gender,
//                           onChanged: (value) {
//                             setState(() {
//                               gender = value.toString();
//                             });
//                           },
//                         ),
//                         const Text('Female'),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 10),

//               // Blood Group Dropdown
//               DropdownButtonFormField<String>(
//                 decoration: InputDecoration(
//                   labelText: 'Blood Group',
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                 ),
//                 items: const [
//                   DropdownMenuItem(value: 'A+', child: Text('A+')),
//                   DropdownMenuItem(value: 'A-', child: Text('A-')),
//                   DropdownMenuItem(value: 'B+', child: Text('B+')),
//                   DropdownMenuItem(value: 'B-', child: Text('B-')),
//                   DropdownMenuItem(value: 'O+', child: Text('O+')),
//                   DropdownMenuItem(value: 'O-', child: Text('O-')),
//                   DropdownMenuItem(value: 'AB+', child: Text('AB+')),
//                   DropdownMenuItem(value: 'AB-', child: Text('AB-')),
//                 ],
//                 onChanged: (value) {
//                   setState(() {
//                     bloodGroup = value;
//                   });
//                 },
//                 validator: (value) => value == null ? 'Please select your blood group' : null,
//               ),
//               const SizedBox(height: 10),

//               // Height in cm
//               TextFormField(
//                 controller: height,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   labelText: 'Height (cm)',
//                   prefixIcon: const Icon(Icons.height),
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                 ),
//                 validator: (value) {
//                   if (value == null || double.tryParse(value) == null) {
//                     return 'Enter a valid height in cm';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 10),

//               // Weight in kg
//               TextFormField(
//                 controller: weight,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   labelText: 'Weight (kg)',
//                   prefixIcon: const Icon(Icons.line_weight),
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                 ),
//                 validator: (value) {
//                   if (value == null || double.tryParse(value) == null) {
//                     return 'Enter a valid weight in kg';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 10),

//               // Age Trending Button
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text('Age:', style: TextStyle(fontSize: 16)),
//                   Row(
//                     children: [
//                       IconButton(
//                         onPressed: () {
//                           if (age > 1) {
//                             setState(() {
//                               age--;
//                             });
//                           }
//                         },
//                         icon: const Icon(Icons.remove_circle),
//                       ),
//                       Text('$age years', style: const TextStyle(fontSize: 16)),
//                       IconButton(
//                         onPressed: () {
//                           setState(() {
//                             age++;
//                           });
//                         },
//                         icon: const Icon(Icons.add_circle),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),

//               // Submit Button
//               Center(
//                 child: ElevatedButton(
//                   onPressed: postData,
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.blue,
//                     padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//                   ),
//                   child: const Text('SUBMIT', style: TextStyle(fontSize: 16)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }








// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:medlens/layout/login.dart';

// class PatientHealth extends StatefulWidget {
//   const PatientHealth({Key? key}) : super(key: key);

//   @override
//   State<PatientHealth> createState() => _PatientHealthState();
// }

// class _PatientHealthState extends State<PatientHealth> {
//   late TextEditingController pastHealth, allergy, sleepPattern, surgery, familyHistory, 
//       currentMedication, alcohol, smoking, activityLevel, menstrualCycle, 
//       dietPlan, consultantDrName, consultantDrPlace;

//   @override
//   void initState() {
//     pastHealth = TextEditingController();
//     allergy = TextEditingController();
//     sleepPattern = TextEditingController();
//     surgery = TextEditingController();
//     familyHistory = TextEditingController();
//     currentMedication = TextEditingController();
//     alcohol = TextEditingController();
//     smoking = TextEditingController();
//     activityLevel = TextEditingController();
//     menstrualCycle = TextEditingController();
//     dietPlan = TextEditingController();
//     consultantDrName = TextEditingController();
//     consultantDrPlace = TextEditingController();
//     super.initState();
//   }

//   void postData() async {
//     String url = login.url + "patient_health/patient_health/";
//     var resp = await post(url, body: {
//       'past_health': pastHealth.text,
//       'allergy': allergy.text,
//       'sleep_pattern': sleepPattern.text,
//       'surgery': surgery.text,
//       'fam_health_history': familyHistory.text,
//       'current_medication': currentMedication.text,
//       'alcohol': alcohol.text,
//       'smoking': smoking.text,
//       'active_level': activityLevel.text,
//       'menstrual_cycle': menstrualCycle.text,
//       'diet_plan': dietPlan.text,
//       'consultant_dr_name': consultantDrName.text,
//       'consultdr_place': consultantDrPlace.text,
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Add Patient Health',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Color.fromARGB(255, 57, 154, 234),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             buildQuestionnaireField('Past Health', pastHealth, 'Include any chronic conditions or medical issues experienced. Essential for understanding health history and personalized care.'),
//             buildQuestionnaireField('Allergy', allergy, 'List any allergies you have.'),
//             buildQuestionnaireField('Sleep Pattern', sleepPattern, 'Describe your daily sleep pattern.'),
//             buildQuestionnaireField('Surgery', surgery, 'List any major surgeries you have undergone.'),
//             buildQuestionnaireField('Family History', familyHistory, 'List any chronic diseases present in your family history. This will help indicate genetic risks.'),
//             buildQuestionnaireField('Current Medication', currentMedication, 'List any medications you are currently taking.'),
//             buildQuestionnaireField('Alcohol', alcohol, 'Describe your alcohol consumption habits.'),
//             buildQuestionnaireField('Smoking', smoking, 'Describe your smoking habits.'),
//             buildQuestionnaireField('Activity Level', activityLevel, 'Describe your weekly physical activity level.'),
//             buildQuestionnaireField('Menstrual Cycle', menstrualCycle, 'Provide details about your menstrual cycle to help understand hormonal health.'),
//             buildQuestionnaireField('Diet Plan', dietPlan, 'Describe your regular diet plan.'),
//             buildQuestionnaireField('Consultant Doctor Name', consultantDrName, 'Provide the name of the doctor you consulted.'),
//             buildQuestionnaireField('Consultant Doctor Place', consultantDrPlace, 'Provide the location of the doctor clinic.'),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 postData();
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (BuildContext context) => PatientHealth(),
//                   ),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(vertical: 15),
//                 primary: Colors.blue,
//               ),
//               child: Text('SUBMIT', style: TextStyle(fontSize: 18)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildQuestionnaireField(String label, TextEditingController controller, String hint) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//       elevation: 4,
//       margin: EdgeInsets.only(bottom: 15),
//       child: Padding(
//         padding: EdgeInsets.all(15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               label,
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blueAccent,
//               ),
//             ),
//             SizedBox(height: 10),
//             TextFormField(
//               controller: controller,
//               maxLines: 3,
//               decoration: InputDecoration(
//                 hintText: hint,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 contentPadding: EdgeInsets.all(10),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
