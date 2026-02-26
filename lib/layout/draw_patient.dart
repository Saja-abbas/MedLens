import 'package:flutter/material.dart';
import 'package:medlens/layout/login.dart';
import 'package:medlens/layout/mainpage_bys.dart';

class draw_patient extends StatefulWidget {
  const draw_patient({Key? key}) : super(key: key);

  @override
  State<draw_patient> createState() => _draw_patientState();
}
class _draw_patientState extends State<draw_patient> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40.0,
                      backgroundImage: AssetImage('asset/paticon.png'),
                      // backgroundImage: ,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 20, 30),
                      child: Text(
                        'Welcome Patient',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )

                ],
                alignment: AlignmentDirectional.center,
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 32, 26, 48),
              ),
            ),
             ListTile(
              leading: Icon(Icons.edit_note_outlined),
              title: Text('Edit Profile'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/edit_pt');
              },
            ),

            ListTile(
              leading: Icon(Icons.upload),
              title: Text('Upload Report'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/upload_rpt');
              },
            ),
             ListTile(
              leading: Icon(Icons.landslide_sharp),
              title: Text('Prediction'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/prediction');
              },
            ),
           ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Doctor Details'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/vw_dr_details_pt');
              },
            ),
            ListTile(
              leading: Icon(Icons.biotech),
              title: Text('Lab Details'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/vw_lab_details_pt');
              },
            ),
           
            ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text('Notification'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/notification');
              },
            ),
            ListTile(
              leading: Icon(Icons.location_history),
              title: Text('Nearest Doctor'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/nearest');
              },
            ),
             ListTile(
              leading: Icon(Icons.feedback_rounded),
              title: Text('Feedback'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/fdbck_pt');
              },
            ),
            ListTile(
              leading: Icon(Icons.feedback_rounded),
              title: Text('Report'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/aaaa');
              },
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text('Logout'),
              onTap: (){
                // Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => login()));
              },
            ),
               ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text('Back to Bystander Page'),
              onTap: (){
                // Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => mainpage_bys()));
              },
            ),
          ],
        ),
      ),
    );
  }
}