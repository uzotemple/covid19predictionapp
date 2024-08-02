import 'package:covid19_app/screen/Identification_page.dart';
import 'package:covid19_app/screen/classification_page.dart';
import 'package:covid19_app/screen/create_account.dart';
import 'package:covid19_app/screen/doctor_login_page.dart';
import 'package:covid19_app/screen/patient_dashboard_page.dart';
import 'package:covid19_app/screen/patient_login_page.dart';
import 'package:covid19_app/screen/unboarding.dart';
import 'package:covid19_app/screen/view_doctors.dart';
import 'package:covid19_app/screen/welcome_page.dart';
import 'package:covid19_app/symptomchecker.dart';
import 'package:flutter/material.dart';


const onunboardingPage = "/onunboarding";
const onwelcomePage = "/onwelcome";
const ondoctorpage = "/ondoctor";
const onpatienpage = "/onpatient";
const onclassificationPage = "/onClassification";
const onidentificationPage = "/onidentification";
const onpatientdashboardPage = "/ondashboard";
const onCreatePage = "/oncreate";
const onviewdoctor = "/onviewdoctor";
const onsymptomchecker = "/onsymptomchecker";


final routes = <String, Widget Function(BuildContext)> {
  onunboardingPage: (_) => UnboardingPage(),
  onwelcomePage: (_) => WelcomePage(),
  ondoctorpage: (_) => DoctorLogin(),
  onpatienpage: (_) => PatientLogin(),
  onclassificationPage: (_) => ClassificationModule(),
  onidentificationPage: (_) => IdentificationPage(),
  onpatientdashboardPage: (_) => PatientDashboard(),
  onCreatePage: (_) => CreateAccount(),
  onviewdoctor: (_) => ViewDoctors(),
  onsymptomchecker: (_) => SymptomChecker(),
};