import 'person.dart';
import 'Patient.dart';

class Doctor extends Person {
  late String specialization;
  List<Patient> patientsOfDoctor = [];

  Doctor(super.name, super.age, this.specialization);
  void set_specialization(String specialization){
    this.specialization=specialization;
  }
  String get_specialization(){
    return specialization;
  }

  void addPatient(Patient patient) {
    if (!patientsOfDoctor.any((existingPatient) => existingPatient.get_name() == patient.get_name())) {
      patientsOfDoctor.add(patient);
    } else {
      print("Patient is already added.");
    }
  }

  void showPatients() {
    for (Patient patient in patientsOfDoctor) {
      print('Patient Name: ${patient.get_name()}');
      print('Patient Age: ${patient.get_age()}');
    }
  }

  @override
  void disPlayInFo() {
    print("Name is: ${get_name()}");
    print("Age is: ${get_age()}");
    print("Specialization is: $specialization");
  }
}
