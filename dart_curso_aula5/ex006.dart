import 'dart:io';

void main() {
	double balance = 1000.0;
	double sac;
	int choose;

	do {
		print('='*30);
		print('ATM');
		print('');
		print('''1 - Check balance
2 - Deposit
3 - Withdraw
4 - Exit''');
		print('='*30);
		print('Choose an option:');
		choose = int.parse(stdin.readLineSync()!);
		
		if (choose == 1) {
			print('Your valuer is R\$$balance');
		} else if (choose == 2) {
			print('How money do you want deposit?');
			balance += double.parse(stdin.readLineSync()!);
			print('Deposit concluid!');
		} else if (choose == 3) {
			print('How do you want remove money?');
			sac = double.parse(stdin.readLineSync()!);
			if (sac > balance) {
				print('Negad!');
			} else {
				balance -= sac;
				print('concluid sac!');
			}
		}
	} while (choose != 4);
	print('Program closed!');
}
