import 'package:flutter/material.dart';

import '../datamodel.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    var p = Product(id: 0, name: "Karak Chai", price: 10, image: "coffee");
    var p1 = Product(id: 2, name: "Karak Chai", price: 10, image: "coffee");
    var p3 = Product(id: 0, name: "Karak Chai", price: 10, image: "coffee");
    var p2 = Product(
        id: 0,
        name: "Karak Chai Karak Chai",
        price: 10000000000000000000000,
        image: "coffee");
    var p4 = Product(id: 0, name: "Karak Chai", price: 10, image: "coffee");

    return ListView(
      shrinkWrap: true,
      children: [
        ProductItem(item: p),
        ProductItem(item: p1),
        ProductItem(item: p2),
        ProductItem(item: p3),
        ProductItem(item: p4),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product item;

  const ProductItem({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          child: Column(
            children: [
              Image.asset("assets/black_coffee.png"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(item.name,
                            style:
                                const TextStyle(fontWeight: FontWeight.w700)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("£${item.price}"),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Add")),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
