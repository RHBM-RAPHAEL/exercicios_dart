import 'dart:io';

void main() {
	int choose;
	
	do {
		print('Choose a drink:');
		print('1 - Coffee');
		print('2 - Water');
		print('3 - Juice');
		print('4 - Soda');
		print('=' * 30);

		choose = int.parse(stdin.readLineSync()!);
		print('=' * 30);

		switch(choose) {
			case 1:
				print('You chose Coffee!');
			case 2:
				print('You chose Water!');
			case 3:
				print('You chose Juice!');
			case 4:
				print('You chose Soda!');
			default:
				print('Invalid option!');
		}
		print('=' * 30);
	} while (choose < 5  && choose > 0);
}
