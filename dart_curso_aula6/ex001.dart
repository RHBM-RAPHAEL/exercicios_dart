import 'dart:io';

void main() {
        int day;
	do {
		print('Choose one number:');
		day = int.parse(stdin.readLineSync()!);
		switch (day) {
			case 1:
				print('Monday');
			case 2:
				print('Tuesday');
			case 3:
				print('Wednesday');
			default:
				print('Invalid day');
		}
	} while (day <= 3);
}
