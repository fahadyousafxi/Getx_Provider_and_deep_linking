import 'package:flutter/material.dart';
import 'package:getx_and_provider/product_page.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  List productPrice = [
    '234',
    '244',
    '434',
    '134',
    '734',
    '934',
  ];

  List productNAme = [
    'product1',
    'product2',
    'product3',
    'product4',
    'product5',
    'product6',
  ];

  List<Widget> productIcons = [
    Icon(Icons.ac_unit),
    Icon(Icons.deck),
    Icon(Icons.padding),
    Icon(Icons.access_alarm),
    Icon(Icons.add_business),
    Icon(Icons.account_balance_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('All Products'),
        ),
        body: ListView.builder(
          itemCount: productNAme.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductPage(
                            productPrice: productPrice[index],
                            productIcon: productIcons[index],
                            productName: productNAme[index])));
              },
              trailing: Text('${productPrice[index]}'),
              contentPadding: EdgeInsets.all(15),
              iconColor: Colors.green,
              leading: productIcons[index],
              title: Text('Name: ${productNAme[index]}'),
              subtitle: Text('Price: ${productPrice[index]}'),
            );
          },
        ));
  }
}
