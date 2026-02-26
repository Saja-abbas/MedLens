





















// import 'package:flutter/material.dart';

// void main() {
//   runApp(fdbck_bys());
// }

// class fdbck_bys extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Feedback Form',
//       theme: ThemeData(
//         primarySwatch: Colors.cyan,
//       ),
//       home: FeedbackForm(),
//     );
//   }
// }

// class FeedbackForm extends StatefulWidget {
//   @override
//   _FeedbackFormState createState() => _FeedbackFormState();
// }

// class _FeedbackFormState extends State<FeedbackForm> {
//   final _formKey = GlobalKey<FormState>();
//   String? _experience = 'Good';
//   String? _feedbackType = 'Bug';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Feedback Form'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             children: [
//               Card(
//                 elevation: 3,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     children: [
//                       Text(
//                         "Send us your feedback!",
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Text(
//                         "Do you have a suggestion or found some bug? Let us know in the field below.",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.grey[700],
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         "How was your experience?",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           _emojiOption("😊", "Good"),
//                           _emojiOption("😐", "Neutral"),
//                           _emojiOption("😞", "Bad"),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       // Feedback description
//                       TextFormField(
//                         decoration: InputDecoration(
//                           labelText: 'Describe your experience here...',
//                           border: OutlineInputBorder(),
//                         ),
//                         maxLines: 3,
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please describe your experience';
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(height: 20),
//                       // Feedback type selection
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           _feedbackOption('Bug', _feedbackType),
//                           _feedbackOption('Suggestion', _feedbackType),
//                           _feedbackOption('Others', _feedbackType),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       // Submit button
//                       ElevatedButton(
//                         onPressed: () {
//                           if (_formKey.currentState!.validate()) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(content: Text('Feedback submitted')),
//                             );
//                           }
//                         },
//                         child: Text('Send Feedback'),
//                         style: ElevatedButton.styleFrom(
//                           minimumSize: Size(double.infinity, 50),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _emojiOption(String emoji, String label) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _experience = label;
//         });
//       },
//       child: Column(
//         children: [
//           Text(
//             emoji,
//             style: TextStyle(fontSize: 30),
//           ),
//           Radio<String>(
//             value: label,
//             groupValue: _experience,
//             onChanged: (String? value) {
//               setState(() {
//                 _experience = value;
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _feedbackOption(String label, String? groupValue) {
//     return Expanded(
//       child: ListTile(
//         title: Text(label),
//         leading: Radio<String>(
//           value: label,
//           groupValue: _feedbackType,
//           onChanged: (String? value) {
//             setState(() {
//               _feedbackType = value;
//             });
//           },
//         ),
//       ),
//     );
//   }
// }


















import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:medlens/layout/botnav_bys.dart';
import 'package:medlens/layout/draw_bystander.dart';
import 'package:medlens/layout/login.dart';
import 'botnav_patient.dart';
import 'draw_patient.dart';

class fdbck_bys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Feedback Form For Bystander',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: FeedbackForm(),
    );
  }
}

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController feedbackController = TextEditingController();
  String? _experience = 'Good';
  String? _feedbackType = 'Bug';

  void postFeedback() async {
    var url =Uri.parse ( login.url + "feedback/ppp/");
    var response = await post(url, body: {
      'feedback': feedbackController.text,
      'bid':login.uid
    });

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Feedback submitted successfully')),
      );
      feedbackController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to submit feedback')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Form For Bystander'),
        backgroundColor: Colors.cyan,
      ),
      
      drawer: draw_bystander(),
      bottomNavigationBar: botnav_bys(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        "Send us your feedback!",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Do you have a suggestion or tell something about our service ? Let us know in the field below.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "How was your experience?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _emojiOption("😊", "Good"),
                          _emojiOption("😐", "Neutral"),
                          _emojiOption("😞", "Bad"),
                        ],
                      ),
                      SizedBox(height: 20),
                      // Feedback description
                      TextFormField(
                        controller: feedbackController,
                        decoration: InputDecoration(
                          labelText: 'Describe your experience here...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefixIcon: Icon(Icons.feedback),
                        ),
                        maxLines: 3,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please describe your experience';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      // Feedback type selection
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _feedbackOption('Nice service', _feedbackType),
                          _feedbackOption('Wrong info', _feedbackType),
                          _feedbackOption('Others', _feedbackType),
                        ],
                      ),
                      SizedBox(height: 20),
                      // Submit button
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            postFeedback();
                          }
                        },
                        child: Text('Send Feedback'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                           backgroundColor: Colors.cyan,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _emojiOption(String emoji, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _experience = label;
        });
      },
      child: Column(
        children: [
          Text(
            emoji,
            style: TextStyle(fontSize: 30),
          ),
          Radio<String>(
            value: label,
            groupValue: _experience,
            onChanged: (String? value) {
              setState(() {
                _experience = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _feedbackOption(String label, String? groupValue) {
    return Expanded(
      child: ListTile(
        title: Text(label),
        leading: Radio<String>(
          value: label,
          groupValue: _feedbackType,
          onChanged: (String? value) {
            setState(() {
              _feedbackType = value;
            });
          },
        ),
      ),
    );
  }
}