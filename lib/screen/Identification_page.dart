import 'package:flutter/material.dart';

class IdentificationPage extends StatefulWidget {
  const IdentificationPage({super.key});

  @override
  State<IdentificationPage> createState() => _IdentificationPageState();
}

class _IdentificationPageState extends State<IdentificationPage> {
  bool firstValue = false;
  bool secondValue = false;
  bool thirdValue = false;
  bool forthValue = false;
  bool fifthValue = false;
  bool sixthValue = false;
  bool seventhValue = false;
  bool eightValue = false;
  bool ninthValue = false;
  bool tenthValue = false;
  bool eleventhValue = false;
  bool twelvethValue = false;
  bool thirteenthValue = false;
  bool fourteenthValue = false;
  bool fiftennthValue = false;
  bool sixteenthValue = false;
  bool seventeenthValue = false;
  bool eighteenthValue = false;
  bool ninteenthValue = false;
  bool twentythValue = false;

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
          "Identification Module",
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
            icon: Icon(Icons.menu),
            color: Colors.white,
          )
        ],
        backgroundColor: const Color(0xFFFF5B5B),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.03),
            Text(
              "Select Patient Symptoms",
              style: TextStyle(
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFFF5B5B),
              ),
            ),
            for (var symptom in symptoms)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenHeight * 0.01),
                child: Row(
                  children: [
                    Checkbox(
                        value: symptom['value'],
                        onChanged: (value) {
                          setState(() {
                            symptom['value'] = value!;
                          });
                        }),
                    Text(
                      symptom['name'],
                      style: TextStyle(fontSize: screenWidth * 0.045),
                    ),
                  ],
                ),
              ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
              child: Container(
                width: screenWidth * 0.9,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "SUBMIT",
                    style: TextStyle(fontSize: screenWidth * 0.045),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF5B5B),
                    foregroundColor: const Color(0xFFFFFFFF),
                    elevation: 5.0,
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final List<Map<String, dynamic>> symptoms = [
    {'name': 'Cough', 'value': false},
    {'name': 'HeadAches', 'value': false},
    {'name': 'MuscleAches', 'value': false},
    {'name': 'Tiredness', 'value': false},
    {'name': 'Sore Throat', 'value': false},
    {'name': 'Running Nose', 'value': false},
    {'name': 'Diarrhea', 'value': false},
    {'name': 'Difficalty in Breathing', 'value': false},
    {'name': 'Lose of Smell', 'value': false},
    {'name': 'Itchy Nose', 'value': false},
    {'name': 'Itchy Eyes', 'value': false},
    {'name': 'Itchy Mouth', 'value': false},
    {'name': 'Sneezing', 'value': false},
    {'name': 'Pink Eyes', 'value': false},
    {'name': 'Stuffy Nose', 'value': false},
    {'name': 'Nausea', 'value': false},
    {'name': 'Shortness of Breath', 'value': false},
  ];
}
