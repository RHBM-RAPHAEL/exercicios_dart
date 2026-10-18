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
				for (String product in products) {
          print("- $product");
        }
        print("${products.length} in total!");
			case 2:
				print("Add a product:");
				choose = stdin.readLineSync();
				products.add(choose!);
			case 3:
				print("Choose the product for remove:");
				print(products);
				choose = stdin.readLineSync();
        if (products.contains(choose)) {
          products.remove(choose);
					print("Product removed!");
				} else {
					print("Product not find!");
				}
			case 4:
				print("What product do you want find:");
				choose = stdin.readLineSync();
				if (products.contains(choose)) {
					print("Product found!");
				} else {
					print("Product not find!");
				}
      case 5:
        print("Program closed!");
      default:
        print("Choose invalid!");
		}
	}
}
