import "dart:io";

void main() {
	String? color;

	print("=" * 30);
	print("What is the traffic light color?");
	print("=" * 30);
	color = stdin.readLineSync()!.toLowerCase();
	print("=" * 30);

	switch(color) {
		case "red":
			print("Stop!");
		case "yellow":
			print("Attention!");
		case "green":
			print("Go!");
		default:
			print("Invalid color!");
	}
	print("=" * 30);
}
