import "dart:io";

void main() {
	List<String> students = [];
	List<double> grades = [];

	int choose;
	double grade;
	String? text;

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
""");
	
		choose = int.parse(stdin.readLineSync()!);

		switch(choose) {
			case 1:
				print("Register student:");
				text = stdin.readLineSync().toLowerCase();
				print("Register student grade:");
				grade = double.parse(stdin.readLineSync()!);

				if (students.contains(text!)) {
					print("$text existed!");
				} else {
					print("$text registed!");
					students.add(text);
					grades.add(grade);
				}
			case 2:
				print("Students registed:");
				
				for (int i = 0; i < students.length; i++) {
					print("- ${students[i]}, grade: ${grades[i]}");
				}
			case 3:
				print("Search student:");
				text = stdin.readLineSync()!;
				if (students.contains(text!)) {
					print("Student Searched!");
					for (int y = 0; y < students.length; y++) {
						if (text == students[y]) {
							print("$text grade: ${grades[y]}");
						}
					}
				}
			default:
				print("You exit!");
		}
	} while (choose != 6);
}
