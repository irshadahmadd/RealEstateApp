import 'package:flutter/foundation.dart';
class AddtoFaverate with ChangeNotifier{
  List<int> _selectedItems=[];
  List<int> get selectedItems=> _selectedItems;
  void addItem(int value){
    _selectedItems.add(value);
  }

  void removeItem(int value){
    _selectedItems.remove(value);
    notifyListeners();
  }

}