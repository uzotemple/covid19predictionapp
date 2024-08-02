// import 'package:flutter/material.dart';

// class UnboardingPage extends StatefulWidget {
//   const UnboardingPage({super.key});

//   @override
//   State<UnboardingPage> createState() => _UnboardingPageState();
// }

// class _UnboardingPageState extends State<UnboardingPage> {

//   void onunboarding() {
//     Navigator.pushNamed(context, "/onwelcome");
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('images/cov.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Container(
//             color: Colors.white.withOpacity(0.75),
//           ),
//           Column(
//             children: [
//               Expanded(
//                 child: Center(
//                   child: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Text(
//                             "Monitor Your Health & Stay Safe.",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: screenWidth * 0.08, // Responsive text size
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Text(
//                             "Access health tips, track symptoms, and receive alerts to stay safe during the COVID-19 pandemic.",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: screenWidth * 0.05, // Responsive text size
//                               color: Colors.black,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
              
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: ElevatedButton(
//                   onPressed: onunboarding,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFFFF5B5B),
//                     foregroundColor: Colors.white,
//                     padding: EdgeInsets.symmetric(
//                       horizontal: screenWidth * 0.2, // Responsive button padding
//                       vertical: screenHeight * 0.02,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Text(
//                     "Let’s Start",
//                     style: TextStyle(fontSize: screenWidth * 0.05),
//                   ),
//                 ),
//               ),

//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class UnboardingPage extends StatefulWidget {
  const UnboardingPage({super.key});

  @override
  State<UnboardingPage> createState() => _UnboardingPageState();
}

class _UnboardingPageState extends State<UnboardingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onunboarding() {
    Navigator.pushNamed(context, "/onwelcome");
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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
            color: Colors.white.withOpacity(0.75),
          ),
          Column(
            children: [
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SlideTransition(
                          position: _animation,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Monitor Your Health & Stay Safe.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: screenWidth * 0.08, // Responsive text size
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SlideTransition(
                          position: _animation,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Access health tips, track symptoms, and receive alerts to stay safe during the COVID-19 pandemic.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: screenWidth * 0.05, // Responsive text size
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: onunboarding,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF5B5B),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.2, // Responsive button padding
                      vertical: screenHeight * 0.02,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Let’s Start",
                    style: TextStyle(fontSize: screenWidth * 0.05),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

