import 'dart:js';

import 'package:flutter/material.dart';
import 'package:medlens/layout/alert.dart';
import 'package:medlens/layout/fdbck_bys.dart';
import 'package:medlens/layout/fdbck_pt.dart';
import 'package:medlens/layout/ip.dart';
import 'package:medlens/layout/location.dart';
import 'package:medlens/layout/login.dart';
import 'package:medlens/layout/mainpage_bys.dart';
import 'package:medlens/layout/mainpage_patient.dart';
import 'package:medlens/layout/mainregister.dart';
import 'package:medlens/layout/patient_health.dart';
import 'package:medlens/layout/prediction.dart';
import 'package:medlens/layout/register_bys.dart';
import 'package:medlens/layout/register_pt.dart';
import 'package:medlens/layout/update_bys.dart';
import 'package:medlens/layout/update_pt.dart';
import 'package:medlens/layout/upload_rpt.dart';
import 'package:medlens/layout/view_nearest_doctor.dart';
import 'package:medlens/layout/vw_dpt_dr.dart';
import 'package:medlens/layout/vw_dr_details_bys.dart';
import 'package:medlens/layout/vw_dr_detials_pt.dart';
import 'package:medlens/layout/vw_dr_loc.dart';
import 'package:medlens/layout/vw_lab_details_bys.dart';
import 'package:medlens/layout/vw_lab_details_pt.dart';
import 'package:medlens/layout/vw_lab_location.dart';
import 'package:medlens/layout/vw_notify_bys.dart';
import 'package:medlens/layout/vw_notify_pt.dart';
import 'package:medlens/layout/vw_pt_port.dart';
import 'package:medlens/layout/vw_rrt_patient.dart';
import 'package:medlens/layout/vw_scning_rpt.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => ip(),
      '/alert':(context) => alert(),
      '/fdbck_bys':(context) => fdbck_bys(),
      '/fdbck_pt':(context) =>fdbck_pt(),
      '/login':(context) =>login(),
      '/register_bys':(context) =>register_bys(),
      '/register_pt':(context) => register_pt(),
      '/uppppp':(context) =>update_bys(),
      '/edit_pt':(context) => EditProfilePatient(),
      '/upload_rpt':(context) => UploadRpt(),
      '/vw_dpt_dr':(context) => view_dept(),
      '/vw_dr_details_bys':(context) => vw_dr_details_bys(),
      '/vw_dr_details_pt':(context) => vw_dr_details_pt(),
      '/vw_dr_loc':(context) => vw_dr_loc(),
      '/vw_lab_details_bys':(context) => vw_lab_details_bys(),
      '/vw_lab_details_pt':(context) => vw_lab_details_pt(),
      '/vw_lab_location':(context) => vw_lab_location(),
      '/vw_pt_port':(context) => vw_pt_port(),
      '/vw_scning_rpt':(context) => vw_scning_rpt(),
      '/vw_notify_bys':(context) => vw_notify_bys(),
      '/notification':(context) => vw_notify_pt(),
      '/main':(context) => mainpage_patient(),
      '/bys':(context) => mainpage_bys(),
      '/prediction':(context) => Prediction(),
      '/location':(context) => view_map(),
      '/nearest':(context) => vw_nearest_loc(),
       '/vw':(context) => vw_nearest_loc(),
       '/aaaa':(context) => vw_pat_report(),
    }
  ));
}
  
