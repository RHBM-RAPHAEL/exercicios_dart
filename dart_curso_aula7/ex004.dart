import "dart:io";

void main() {
	List<String> products = ["Mouse", "Keyboard", "Monitor"];
	String? choose;

	print("Current products:");
	for (String product in products) {
		print("- $product");
	}
	
	print("\nEnter a product to add:");
	choose = stdin.readLineSync()!;
	products.add(choose);

	print("\nEnter a product to remove:");
	choose = stdin.readLineSync()!;

	if (products.contains(choose)) {
		products.remove(choose);
		print("\nProduct removed!");
	} else {
		print("Product not found!");
	}

	print("\nUpdate products:");
	for (String product in products) {
		print("- $product");
	}

	print("\nTotal products: ${products.length}");
}
