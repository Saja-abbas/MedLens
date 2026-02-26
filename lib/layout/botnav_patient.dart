import 'package:flutter/material.dart';
class botnav_patient extends StatefulWidget {
  const botnav_patient({Key? key}) : super(key: key);

  @override
  State<botnav_patient> createState() => _botnav_patientState();
}

class _botnav_patientState extends State<botnav_patient> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (value) {
        setState(() {
          _currentIndex = value;
          print(_currentIndex);
          if(_currentIndex==0)
          {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/main');
          }
          else if(_currentIndex==1)
          {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/edit_pt');
          }
          else if(_currentIndex==2)
          {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/fdbck_pt');
          }
          else if(_currentIndex==3)
          {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/notification');
          }
          else if(_currentIndex==4)
          {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/upload_rpt');
          }
        });

      },
      items: [
        BottomNavigationBarItem(
          label: 'Home',

          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Profile',

          icon: Icon(Icons.account_circle),
        ),
        BottomNavigationBarItem(
          label: 'Feedback',
          icon: Icon(Icons.feedback_rounded),
        ),
        BottomNavigationBarItem(
          label: 'Notification',
          icon: Icon(Icons.notifications_active),
        ),
        BottomNavigationBarItem(
          label: 'Upload',
          icon: Icon(Icons.file_upload_outlined),
        ),
      ],
    );;
  }
}