import "dart:io";

void main() {
	String? color;

	print("=" * 30);
	print("What is the traffic light color?");
	print("=" * 30);
	color = stdin.readLineSync()!.toLowerCase();
	print("=" * 30);
	String? word = color[0][0];
	switch(word) {
		case "r":
			print("Stop!");
		case "y":
			print("Attention!");
		case "g":
			print("Go!");
		default:
			print("Invalid color!");
	}
	print("=" * 30);
}
