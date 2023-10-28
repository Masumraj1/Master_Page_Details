import 'package:flutter/material.dart';
import 'package:master/second.dart';

import 'product.dart';
import 'ratingbox.dart';

class ProductBox extends StatelessWidget {

  const ProductBox({super.key, required this.item});

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        height: 141,
        child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("assets/${item.image}"),
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(item.name,
                                style: const TextStyle(fontWeight: FontWeight.bold)),
                            Text(item.description),
                            // Text("Price: ${item.price}"),
                            // const RatingBox(),
                            // const Secondclass(),
                          ],
                        )
                    )
                )
              ]
          ),
        )
    );
  }
}