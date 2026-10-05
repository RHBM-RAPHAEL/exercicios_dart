import 'dart:io';

void main() {
	print('=' * 30);
	print('Type a number:');
	
	int number = int.parse(stdin.readLineSync()!);
	print('='*30);
	do {
		print('='*30);
		
		for (int i = 0; i <= 10; i++) {
			print('$number X $i = ${number*i}');
		}
		print('='*30);
		number = int.parse(stdin.readLineSync()!);
	} while (number != -1);
	print('Program closed!');
}
