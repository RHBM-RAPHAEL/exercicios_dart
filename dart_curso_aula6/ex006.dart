import "dart:io";

enum Difficulty {
	easy,
	medium,
	hard
}

void main() {
	print("Choose the difficulty:");
	print("\n");
	print("""1 - Easy
2 - Medium
3 - Hard""");

	int choose = int.parse(stdin.readLineSync()!);
	Difficulty? difficulty;

	if (choose == 1) {
		difficulty = Difficulty.easy;
	} else if (choose == 2) {
		difficulty = Difficulty.medium;
	} else if (choose == 3) {
		difficulty = Difficulty.hard;
	}

	switch (difficulty) {
		case Difficulty.easy:
			print("Enemies have 50 HP");
		case Difficulty.medium:
			print("Enemies have 100 HP.");
		case Difficulty.hard:
			print("Enemies have 200 HP.");
		default:
			print("Number invalid!");
	}
}
