import 'package:flutter/material.dart';

import 'product.dart';
import 'productbox.dart';
import 'productpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});
  final String title;

  final items = Product.getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(title: const Text("Product Navigation"),
            backgroundColor: Colors.teal,
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ProductBox(item: items[index]),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) => ProductPage(item: items[index]),
                ),
                );
              },
            );
          },
        ));
  }
}
