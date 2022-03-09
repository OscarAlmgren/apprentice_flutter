import 'package:apprentice_flutter/components/grocery_tile.dart';
import 'package:apprentice_flutter/models/grocery_manager.dart';
import 'package:apprentice_flutter/screens/grocery_item_screen.dart';
import 'package:flutter/material.dart';

class GroceryListScreen extends StatelessWidget {
  final GroceryManager manager;

  const GroceryListScreen({
    Key? key,
    required this.manager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final groceryItems = manager.groceryItems;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
          itemBuilder: (context, index) {
            final item = groceryItems[index];
            return Dismissible(
              key: Key(item.id),
              direction: DismissDirection.endToStart,
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                child: const Icon(
                  Icons.delete_forever,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              onDismissed: (direction) {
                manager.deleteItem(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${item.name} dismissed'),
                  ),
                );
              },
              child: InkWell(
                onTap: () {
                  manager.groceryItemTapped(index);
                },
                child: GroceryTile(
                  key: Key(item.id),
                  item: item,
                  onComplete: (change) {
                    if (change != null) {
                      manager.completeItem(index, change);
                    }
                  },
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 16.0),
          itemCount: groceryItems.length),
    );
  }
}
