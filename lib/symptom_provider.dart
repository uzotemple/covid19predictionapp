import 'package:flutter/foundation.dart';

class Symptom {
  final String name;
  bool isPresent;

  Symptom({required this.name, this.isPresent = false});
}

class SymptomProvider with ChangeNotifier {
  final List<Symptom> _symptoms = [
    Symptom(name: 'Fever'),
    Symptom(name: 'Cough'),
    Symptom(name: 'Shortness of breath'),
    Symptom(name: 'Loss of taste or smell'),
    Symptom(name: 'Sore throat'),
    Symptom(name: 'Headache'),
    Symptom(name: 'Fatigue'),
    Symptom(name: 'Tiredness'),
    Symptom(name: 'MuscleAches'),
    Symptom(name: 'Running Nose'),
    Symptom(name: 'Diarrhea'),
    Symptom(name: 'Difficalty in Breathing'),
    Symptom(name: 'Itchy Nose'),
    Symptom(name: 'Itchy Eyes'),
    Symptom(name: 'Itchy Mouth'),
    Symptom(name: 'Sneezing'),
    Symptom(name: 'Pink Eyes'),
    Symptom(name: 'Stuffy Nose'),
    Symptom(name: 'Nausea'),
    // Add more symptoms here
  ];

  List<Symptom> get symptoms => _symptoms;

  void toggleSymptom(Symptom symptom) {
    symptom.isPresent = !symptom.isPresent;
    notifyListeners();
  }

  bool get isCovidPositive {
    // Simple example logic, you can replace with your own
    int positiveCount = _symptoms.where((symptom) => symptom.isPresent).length;
    return positiveCount >= 5; // Example threshold
  }
}
