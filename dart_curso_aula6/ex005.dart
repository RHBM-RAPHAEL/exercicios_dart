enum OrderStatus {
	preparing,
	delivering,
	delivered
}

void main() {
	OrderStatus status = OrderStatus.delivering;

	switch(status) {
		case OrderStatus.preparing:
			print("Your order is being prepared");
		case OrderStatus.delivering:
			print("Your order is on the way!");
		case OrderStatus.delivered:
			print("Your order has been delivered!");
	}
}
