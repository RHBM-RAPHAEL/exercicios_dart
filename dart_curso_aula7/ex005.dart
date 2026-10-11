import "dart:io";

void main() {
	List<String> products = [
		"Mouse",
		"Keyboard",
		"Monitor"
	];
	
	int chooseNumber = 0;
	String? choose;

	while (chooseNumber != 5) {
		print("========== INVENTORY ==========");
		print("""1 - View products
2 - Add product
3 - Remove product
4 - Search product
5 - Exit""");
		print("=" * 31);
		chooseNumber = int.parse(stdin.readLineSync()!);
	
		switch(chooseNumber) {
			case 1:
				print("Products: $products");
			case 2:
				print("Add a product:");
				choose = stdin.readLineSync();
				products.add(choose!);
			case 3:
				print("Choose the product for remove:");
				print(products);
				choose = stdin.readLineSync();
				products.remove(choose);
			case 4:
				print("What product do you want find:");
				choose = stdin.readLineSync();
				if (products.contains(choose)) {
					print("Product finded!");
				} else {
					print("Product not find!");
				}
      default:
        print("Choose invalid!");
		}
	}
}
