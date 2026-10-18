
import 'dart:io';

void main() {
  List<String> students = [];
  List<double> grades = [];

  int choose = 0;

  do {
    print('''
========== SCHOOL SYSTEM ==========
1 - Register student
2 - View students
3 - Search student
4 - Remove student
5 - Class average
6 - Exit
===================================
''');

    stdout.write('Choose an option: ');
    choose = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (choose) {
      case 1:
        stdout.write('Register student: ');
        String name =
            (stdin.readLineSync() ?? '').trim().toLowerCase();

        if (name.isEmpty) {
          print('Invalid student name!');
          break;
        }

        if (students.contains(name)) {
          print('Student already registered!');
          break;
        }

        stdout.write('Register student grade (0-10): ');
        double? grade =
            double.tryParse(stdin.readLineSync() ?? '');

        if (grade == null ||
            !grade.isFinite ||
            grade < 0 ||
            grade > 10) {
          print('Invalid grade! Enter a number between 0 and 10.');
          break;
        }

        students.add(name);
        grades.add(grade);
        print('Student registered!');

      case 2:
        if (students.isEmpty) {
          print('No students registered!');
        } else {
          print('Registered students:');

          for (int i = 0; i < students.length; i++) {
            String status =
                grades[i] >= 7 ? 'Approved' : 'Failed';

            print(
              '- ${students[i]} | Grade: ${grades[i]} | $status'
            );
          }
        }

      case 3:
        stdout.write('Search student: ');
        String name =
            (stdin.readLineSync() ?? '').trim().toLowerCase();

        int index = students.indexOf(name);

        if (index == -1) {
          print('Student not found!');
        } else {
          print('Student: ${students[index]}');
          print('Grade: ${grades[index]}');
        }

      case 4:
        stdout.write('Choose a student to remove: ');
        String name =
            (stdin.readLineSync() ?? '').trim().toLowerCase();

        int index = students.indexOf(name);

        if (index == -1) {
          print('Student not found!');
        } else {
          students.removeAt(index);
          grades.removeAt(index);
          print('Student removed!');
        }

      case 5:
        if (grades.isEmpty) {
          print('No students registered!');
        } else {
          double sum = 0.0;

          for (double studentGrade in grades) {
            sum += studentGrade;
          }

          double average = sum / grades.length;

          print(
            'Class average: ${average.toStringAsFixed(2)}'
          );
        }

      case 6:
        print('Program closed!');

      default:
        print('Invalid option!');
    }
  } while (choose != 6);
}
  