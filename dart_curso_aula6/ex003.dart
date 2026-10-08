import 'dart:io';

void main() {
        int choose;
	double number1;
	double number2;

	print('Type the first number:');
	number1 = double.parse(stdin.readLineSync()!);
	
	print('Type the second number:');
	number2 = double.parse(stdin.readLineSync()!);

        print('Choose an operation:');
        print('1 - Addition');
        print('2 - Subtraction');
        print('3 - Multiplication');
        print('4 - Division');
        print('=' * 30);
	choose = int.parse(stdin.readLineSync()!);

        switch(choose) {
                case 1:
                        print('Result: ${number1 + number2}');
                case 2:
                        print('Result: ${number1 - number2}');
                case 3:
                        print('Result: ${number1 * number2}');
                case 4:
                        print('Result: ${number1 / number2}');
                default:
                        print('Invalid option!');
        }
	 print('=' * 30);
}
