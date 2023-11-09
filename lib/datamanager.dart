import 'dart:convert';

import 'datamodel.dart';
import 'package:http/http.dart' as http; 

class DataManager {
  List<Category>? _menu;
  List<ItemInCart> cart = [];
  fetchMenu() async {
    const url = "https://firtman.github.io/coffeemasters/api/menu.json"
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var decoded = jsonDecode(response.body) as List<dynamic>;
      _menu = [];
      for (var json in decoded) {
        _menu?.add(Category.fromJson(json));

      }
    }
  }

  Future<List<Category>> getMenu() async {
    if (_menu == null) {
      await fetchMenu();
    }
    return _menu;
  }

  cartAdd(Product p) {
    bool found = false;
    for (var item in cart) {
      if (item.product.id == p.id) {
        item.quantity++;
        found = true;
      }
    }
    if (!found) {
      cart.add(ItemInCart(product: p, quantity: 1));
    }
  }

  cartRemove(Product p) {
    cart.removeWhere((element) => element.product.id == p.id);
  }

  cartClear() {}
  double cartTotal() {
    return cart
        .map((element) => element.quantity * element.product.price)
        .reduce((value, element) => value + element);
  }
}
