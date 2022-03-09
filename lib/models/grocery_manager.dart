import 'grocery_item.dart';
import 'package:flutter/material.dart';

class GroceryManager extends ChangeNotifier {
  final _groceryItems = <GroceryItem>[];
  int _seletedIndex = -1;
  bool _createNewItem = false;

  List<GroceryItem> get groceryItems => List.unmodifiable(_groceryItems);
  int get selectedIndex => _seletedIndex;
  GroceryItem? get selectedGroceryItem =>
      _seletedIndex != -1 ? _groceryItems[_seletedIndex] : null;
  bool get isCreatingNewItem => _createNewItem;

  void createNewItem() {
    _createNewItem = true;
    notifyListeners();
  }

  void deleteItem(int index) {
    _groceryItems.removeAt(index);
    notifyListeners();
  }

  void groceryItemTapped(int index) {
    _seletedIndex = index;
    _createNewItem = false;
    notifyListeners();
  }

  void addItem(GroceryItem item) {
    _groceryItems.add(item);
    _createNewItem = false;
    notifyListeners();
  }

  void updateItem(GroceryItem item, int index) {
    _groceryItems[index] = item;
    _seletedIndex = -1;
    _createNewItem = false;
    notifyListeners();
  }

  void completeItem(int index, bool change) {
    final item = _groceryItems[index];
    _groceryItems[index] = item.copyWith(isComplete: change);
    notifyListeners();
  }
}
