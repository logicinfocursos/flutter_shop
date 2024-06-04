import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart.dart';

import 'package:shop/models/product_list.dart';
import 'package:shop/pages/counter_page.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/providers/counter.dart';
import 'package:shop/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new ProductList(),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ProductList(),            
            ),
          ChangeNotifierProvider(
            create: (_) => Cart(),            
            ),
        ],        
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            fontFamily: 'Lato',
            hintColor: Colors.deepOrange,
          ),
          home: ProductsOverviewPage(),
          routes:{
            AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailPage(),
          }
        ),
      ),
    );
  }
}