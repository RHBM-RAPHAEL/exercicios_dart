import 'dart:io';

void main() {
	print('Type a number greater than 10:');
	
	int number = int.parse(stdin.readLineSync()!);
	
	while (number <=10) {
		print('Try again:');
		number = int.parse(stdin.readLineSync()!);
	}
	print('Correct!');
}
