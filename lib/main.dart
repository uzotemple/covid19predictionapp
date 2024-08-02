// import 'package:covid19_app/doctor_login_page.dart';
// import 'package:covid19_app/Identification_page.dart';
// import 'package:covid19_app/config/routes.dart';
// import 'package:covid19_app/screen/view_doctors.dart';
// import 'package:covid19_app/classification_page.dart';
// import 'package:covid19_app/patient_login_page.dart';
// import 'package:covid19_app/welcome_page.dart';
import 'package:covid19_app/config/routes.dart';
import 'package:covid19_app/symptom_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SymptomProvider(), child: const Covid19App()));
}

class Covid19App extends StatelessWidget {
  const Covid19App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid19 App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      // home:const ViewDoctors(),

      initialRoute: "/onunboarding",
      routes: routes,
    );
  }
}
