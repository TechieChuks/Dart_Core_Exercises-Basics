import 'dart:io';

class Item {
  int id;
  String name;
  int quantity;
  double price;

  Item(this.id, this.name, this.quantity, this.price);

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'quantity': quantity,
    'price': price,
  };

  factory Item.fromJson(Map<String, dynamic> json) =>
      Item(json['id'], json['name'], json['quantity'], json['price']);
}

// ✅ Start with empty in-memory inventory
List<Item> loadItems() {
  return [];
}

void addItem(List<Item> items, Item item) {
  items.add(item);
  print(
    "Item added: ${item.name}, Qty: ${item.quantity}, Price: \$${item.price}",
  );
}

void removeItem(List<Item> items, int id) {
  try {
    Item item = items.firstWhere((i) => i.id == id);
    items.remove(item);
    print("Item removed: ${item.name}");
  } catch (e) {
    print("Item not found.");
  }
}

void listItems(List<Item> items) {
  if (items.isEmpty) {
    print("No items in inventory.");
    return;
  }

  print("\nInventory:");
  for (var item in items) {
    print(
      "${item.id}: ${item.name} - Qty: ${item.quantity} - Price: \$${item.price}",
    );
  }
}

void main() {
  List<Item> items = loadItems();

  while (true) {
    print("\n=== Inventory Management ===");
    print("1. List Items");
    print("2. Add Item");
    print("3. Remove Item");
    print("4. Exit");

    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        listItems(items);
        break;
      case "2":
        stdout.write("Item ID: ");
        int id = int.parse(stdin.readLineSync()!);
        stdout.write("Item Name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Quantity: ");
        int qty = int.parse(stdin.readLineSync()!);
        stdout.write("Price: ");
        double price = double.parse(stdin.readLineSync()!);

        addItem(items, Item(id, name, qty, price));
        break;
      case "3":
        stdout.write("Item ID to remove: ");
        int id = int.parse(stdin.readLineSync()!);
        removeItem(items, id);
        break;
      case "4":
        print("Exiting...");
        exit(0);
      default:
        print("Invalid option.");
    }
  }
}
