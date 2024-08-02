// import 'package:covid19_app/config/routes.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  void onWelcome() {
    Navigator.pushNamed(context, "/ondoctor");
  }

  void onWelcome1() {
    Navigator.pushNamed(context, "/onpatient");
  }

  void onWelcome2() {
    Navigator.pushNamed(context, "/oncreate");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/cov.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            color: Colors.white.withOpacity(0.5),
          ),

          Center(
            child: Container(
              width: 350,
              height: 400,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF).withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      'Click to Login',
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFFFF5B5B),
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                    child: Text(
                      'Choose Your Category',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFFF5B5B),
                      ),
                    ),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: ElevatedButton(
                            onPressed: onWelcome,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFF5B5B),
                              foregroundColor: Colors.white,
                              padding:
                                  EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(15), // Button border radius
                              ),
                            ),
                            child: Text("Doctor")),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left:5.0, right:5.0),
                        child: ElevatedButton(
                            onPressed: onWelcome1,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFFFFFF),
                              foregroundColor: Color(0xFFFF5B5B),
                              padding:
                                  EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(15), // Button border radius
                              ),
                            ),
                            child: Text("Patient")),
                      ),


                    ],
                  ),

                  

                  SizedBox(
                    height: 100,
                  ),


                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Text(
                      "Don't Have an Account?",
                      style: TextStyle(
                          fontSize: 16, color: Color(0xFFFF5B5B),
                          decoration: TextDecoration.underline,
                          decorationColor:  Color(0xFFFF5B5B),
                          ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                        onPressed: onWelcome2,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF5B5B),
                          foregroundColor: Colors.white,
                          padding:
                              EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(15), // Button border radius
                          ),
                        ),
                        child: Text("Create Account")),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
