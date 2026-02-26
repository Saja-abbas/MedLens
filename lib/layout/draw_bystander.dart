import 'package:flutter/material.dart';
import 'package:medlens/layout/login.dart';

class draw_bystander extends StatefulWidget {
  const draw_bystander({Key? key}) : super(key: key);

  @override
  State<draw_bystander> createState() => _draw_bystanderState();
}
class _draw_bystanderState extends State<draw_bystander> {
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
                      backgroundImage: AssetImage('asset/bysticon.png'),
                      // backgroundImage: ,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 20, 30),
                      child: Text(
                        'Welcome Bystander',
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
              leading: Icon(Icons.upload),
              title: Text('Edit Profile'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/uppppp');
              },
            ),

            ListTile(
              leading: Icon(Icons.elderly),
              title: Text('Patient Port'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/main');
              },
            ),
            ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Doctor Detials'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/vw_dr_details_bys');
              },
            ),
            ListTile(
              leading: Icon(Icons.biotech),
              title: Text('Lab Details'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/vw_lab_details_bys');
              },
            ),
            
            ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text('Notification'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/vw_notify_bys');
              },
            ),
            ListTile(
              leading: Icon(Icons.feedback_rounded),
              title: Text('Feedback'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/fdbck_bys');
              },
            ),
             ListTile(
              leading: Icon(Icons.feedback_rounded),
              title: Text('Doctor Location'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/location');
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
          ],
        ),
      ),
    );
  }
}