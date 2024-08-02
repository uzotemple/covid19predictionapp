import 'package:flutter/material.dart';

class PatientDashboard extends StatefulWidget {
  const PatientDashboard({super.key});

  @override
  State<PatientDashboard> createState() => _PatientDashboardState();
}

class _PatientDashboardState extends State<PatientDashboard> {
  void onViewdoctor() {
    Navigator.pushNamed(context, "/onviewdoctor");
  }

  void onBack() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Patients DashBoard",
          style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.05),
        ),
        leading: IconButton(
          onPressed: onBack,
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
            color: Colors.white,
          )
        ],
        backgroundColor: const Color(0xFFFF5B5B),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.05),
                child: Image.asset("images/coughing.png"),
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFF5B5B),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.05),
                child: Text(
                  "As your healthcare provider, We want to reach out to offer some guidance and support during your recovery from COVID-19. First and foremost, please know that you are not alone in this journey. While the virus may be isolating, there is a team of healthcare professionals dedicated to your care and well-being.",
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: const Color(0xFFFF5B5B),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.15,
              ),
              Text(
                "Click Continue to view a Doctors!",
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  color: const Color(0xFFFF5B5B),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Container(
                width: screenWidth * 0.9,
                child: ElevatedButton(
                  onPressed: onViewdoctor,
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(fontSize: screenWidth * 0.045),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF5B5B),
                    foregroundColor: const Color(0xFFFFFFFF),
                    elevation: 5.0,
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.015),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
