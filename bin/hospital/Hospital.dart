import 'Doctor.dart';
import 'person.dart';
import 'Patient.dart';
class Hospital{
  List <Doctor> doctors =[];
  List <Patient> patientsOfHospital =[];
  void addPatient(Patient patient) {
    if (! patientsOfHospital.any((existingPatient) => existingPatient.get_name() == patient.get_name())) {
      if(patientsOfHospital.length < 7) {
        patientsOfHospital.add(patient);
      }else{
        print("The list is complete today.");
      }
    } else {
      print("Patient is already added.");
    }
  }
  void addDoctor(Doctor doctor) {
      doctors.add(doctor);
  }
  void showAllPatients() {
    print("Patients in the hospital:");
    for (Patient patient in patientsOfHospital) {
      print("- ${patient.get_name()} age: ${patient.get_age()} "
          "(${patient.get_illness()})");
      print(".-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-");
    }
  }
  void showAllDoctor() {
    for (Doctor doctor in doctors) {
      print("Doctors in the hospital:");
      print(" ${doctor.get_name()} age : ${doctor.get_age()} (${doctor.specialization})");
    }
  }

}

