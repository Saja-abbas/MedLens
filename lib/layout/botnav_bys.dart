import 'package:flutter/material.dart';
class botnav_bys extends StatefulWidget {
  const botnav_bys({Key? key}) : super(key: key);

  @override
  State<botnav_bys> createState() => _botnav_bysState();
}

class _botnav_bysState extends State<botnav_bys> {
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
            Navigator.pushNamed(context, '/bys');
          }
          else if(_currentIndex==1)
          {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/uppppp');
          }
          else if(_currentIndex==2)
          {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/main');
          }
          else if(_currentIndex==3)
          {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/fdbck_bys');
          }
          else if(_currentIndex==4)
          {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/vw_dr_details_bys');
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
          label: 'Patient Port',
          icon: Icon(Icons.elderly),
        ),
        BottomNavigationBarItem(
          label: 'Feedback',
          icon: Icon(Icons.feedback_rounded),
        ),
        BottomNavigationBarItem(
          label: 'Doctor Details',
          icon: Icon(Icons.medical_services),
        ),
      ],
    );;
  }
}