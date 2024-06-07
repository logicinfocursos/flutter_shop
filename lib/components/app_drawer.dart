import 'package:flutter/material.dart';
import 'package:shop/utils/app_routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Column(
        children: [
          AppBar(
            title: Text('Bem Vindo Usuário!'),
            automaticallyImplyLeading: false, // esconde o ícone de humburger
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('loja'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.HOME,
                );
            },
          ),  
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('pedidos'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.ORDERS,
                );
            },
          ),  
          Divider(),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('gerenciar produtos'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.PRODUCTS,
                );
            },
          ),           
      ],
      )
    );
  }
}