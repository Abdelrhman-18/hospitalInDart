import 'hospital/person.dart';
import 'hospital/Patient.dart';
import 'hospital/Doctor.dart';
import 'hospital/Hospital.dart';

void main(){
  Doctor doctor1 = Doctor( "Dr. Ahmed",54 , "Cardiology");
  Doctor doctor2 = Doctor("Dr. Sara", 45, "Neurology");
  //================================
  Patient patient1 = Patient("Ali",15, "Heart Disease");
  Patient patient2 = Patient("Fatima",25, "Migraine");
  Patient patient3 = Patient("Omar", 28, "High Blood Pressure");
  //================================
  Hospital hospital = Hospital();
  hospital.addDoctor(doctor1);
  hospital.addDoctor(doctor2);
  hospital.addPatient(patient1);
  hospital.addPatient(patient2);
  hospital.addPatient(patient3);
  //================================
  doctor1.addPatient(patient1);
  doctor2.addPatient(patient2);
  doctor2.addPatient(patient3);
  //================================
  hospital.showAllPatients();
  hospital.showAllDoctor();
  print("================================");
  print("Patients of Dr. Ahmed:");
  doctor1.showPatients();
  print("================================");
  print("Patients of Dr. Sara:");
  doctor2.showPatients();
}


