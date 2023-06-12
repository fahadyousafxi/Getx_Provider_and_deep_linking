import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  String? productName;
  String? productPrice;
  Widget? productIcon;

  ProductPage(
      {required this.productPrice,
      required this.productIcon,
      required this.productName,
      super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Products Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              trailing: Text('${widget.productPrice}'),
              contentPadding: EdgeInsets.all(15),
              iconColor: Colors.green,
              leading: widget.productIcon,
              title: Text('Name: ${widget.productName}'),
              subtitle: Text('Price: ${widget.productPrice}'),
            ),
            SizedBox(
              height: 44,
            ),
            ElevatedButton(
                onPressed: () {
                  //
                },
                child: Text('Share'))
          ],
        ),
      ),
    );
  }
}
