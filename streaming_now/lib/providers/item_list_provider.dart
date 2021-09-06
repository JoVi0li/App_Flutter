import 'package:flutter/material.dart';
import 'package:streaming_now/data/item_data.dart';
import 'package:streaming_now/models/item_model.dart';

class ItemListProvider with ChangeNotifier {
  List<ItemModel> _items = itemData;

  List<ItemModel> get items => [..._items];

}
