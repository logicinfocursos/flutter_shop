import 'package:flutter/material.dart';

import 'package:shop/components/product_grid.dart';



class ProductsOverviewPage extends StatelessWidget {
  ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja',
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Colors.blueGrey,
      ),
      body: ProudctGrid(),
    );
  }
}
