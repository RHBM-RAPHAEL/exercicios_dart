import 'dart:io';

void main() {
	print('Type your password:');
	String? password = '';
	
	do {
		password = stdin.readLineSync();
		if (password == 'dart123') {
			print('Access granted!');
		} else {
			print('''Wrong password
Type your password:''');
		}
	} while (password != 'dart123');
}
