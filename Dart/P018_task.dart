import 'dart:io';

void main() {
  // Quantity counters
  int smallQty = 0;
  int mediumQty = 0;
  int largeQty = 0;
  int monsterQty = 0;

  String response = 'y';
  int totalAmount = 0;

  while (response.toLowerCase() == 'y') {
    print("-------------- Menu --------------");
    print("1. Small     - ₹150 per piece");
    print("2. Medium    - ₹250 per piece");
    print("3. Large     - ₹500 per piece");
    print("4. Monster   - ₹750 per piece");

    int choice = 0;
    while (choice < 1 || choice > 4) {
      stdout.write("Please enter a valid choice (1-4): ");
      choice = int.tryParse(stdin.readLineSync()!) ?? 0;
    }

    int price = 0;
    String itemName = '';
    switch (choice) {
      case 1:
        itemName = 'Small';
        price = 150;
        break;
      case 2:
        itemName = 'Medium';
        price = 250;
        break;
      case 3:
        itemName = 'Large';
        price = 500;
        break;
      case 4:
        itemName = 'Monster';
        price = 750;
        break;
    }

    stdout.write("Enter the quantity for $itemName: ");
    int qty = int.tryParse(stdin.readLineSync()!) ?? 0;

    int amount = price * qty;
    print("Amount: ₹$amount");

    totalAmount += amount;

    // Update quantity per item
    if (choice == 1) {
      smallQty += qty;
    } else if (choice == 2) {
      mediumQty += qty;
    } else if (choice == 3) {
      largeQty += qty;
    } else {
      monsterQty += qty;
    }

    stdout.write("Do you want to place more orders? (y/n): ");
    response = stdin.readLineSync() ?? 'n';
  }

  // Order summary
  print("\n---------------- Order Summary ----------------");
  print("Item      | Price | Quantity | Amount");
  print("----------------------------------------------");
  if (smallQty > 0) {
    print("Small     | 150   | $smallQty       | ${smallQty * 150}");
  }
  if (mediumQty > 0) {
    print("Medium    | 250   | $mediumQty       | ${mediumQty * 250}");
  }
  if (largeQty > 0) {
    print("Large     | 500   | $largeQty       | ${largeQty * 500}");
  }
  if (monsterQty > 0) {
    print("Monster   | 750   | $monsterQty       | ${monsterQty * 750}");
  }
  print("----------------------------------------------");
  print("Total Amount: ₹$totalAmount");

  // Calculate and display offers
  print("\n---------------- Free Offers ------------------");
  int smallOffers = smallQty ~/ 4;
  int mediumOffers = mediumQty ~/ 3;
  int largeOffers = largeQty ~/ 2;
  int monsterOffers = monsterQty;

  if (smallOffers > 0) {
    print("Offer: $smallOffers × 500ml Coke (for Small Pizza)");
  }
  if (mediumOffers > 0) {
    print("Offer: $mediumOffers × 1L Coke (for Medium Pizza)");
  }
  if (largeOffers > 0) {
    print("Offer: $largeOffers × Ice + 500ml Coke (for Large Pizza)");
  }
  if (monsterOffers > 0) {
    print("Offer: $monsterOffers × 1L Coke + Ice Cream (for Monster Pizza)");
  }
  if (smallOffers == 0 &&
      mediumOffers == 0 &&
      largeOffers == 0 &&
      monsterOffers == 0) {
    print("No free offers available.");
  }
  print("----------------------------------------------");
}