import 'dart:io';

void main() {
  List<String> students = ["Raphael", "Ana", "Carlos"];
  List<double> grades = [8.5, 6.0, 9.0];
  int choose;
  String? textOperetion;
  do {
    print("""
========== SCHOOL SYSTEM ==========
1 - Register student
2 - View students
3 - Search student
4 - Remove student
5 - Class average
6 - Exit
===================================
Choose an option:
""");
  choose = int.parse(stdin.readLineSync()!);

  switch (choose) {
    case 1:
      print("Register student:");
      textOperetion = stdin.readLineSync()!;
      students.add(textOperetion);

      if (students.contains(textOperetion)) {
        print("Students registed!");
      } else {
        print("Error! Studente no registed!");
      }
      case 2:
        
    }
  } while (choose != 6);
}