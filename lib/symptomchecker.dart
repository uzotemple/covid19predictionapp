import 'package:covid19_app/symptom_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SymptomChecker extends StatelessWidget {
  const SymptomChecker({super.key});

  @override
  Widget build(BuildContext context) {
    final symptomProvider = Provider.of<SymptomProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('COVID-19 Checker'),
        backgroundColor: Color(0xFFFF5B5B),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: symptomProvider.symptoms.length,
                itemBuilder: (context, index) {
                  final symptom = symptomProvider.symptoms[index];
                  return ListTile(
                    title: Text(symptom.name),
                    trailing: Checkbox(
                      value: symptom.isPresent,
                      onChanged: (bool? value) {
                        symptomProvider.toggleSymptom(symptom);
                      },
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final isCovidPositive = symptomProvider.isCovidPositive;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Assessment Result'),
                    content: Text(isCovidPositive
                        ? 'Based on the symptoms you entered, your patient might have COVID-19. Please proceed to healthcare for further assistance or medication.'
                        : 'Based on the symptoms you entered, it is less likely that your patient have COVID-19. However, if they feel unwell, please consult a healthcare proffessional.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF5B5B),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24.0,
                            vertical: 12.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: const Size(400, 50),
                        ),
              child: const Text('Check Symptoms'),
            ),
          ],
        ),
      ),
    );
  }
}
