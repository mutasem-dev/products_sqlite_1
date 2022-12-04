import 'package:flutter/material.dart';
import 'product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  List<Product> products = [];
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: 'delete all',
        onPressed: () {

        },
        child: Icon(Icons.delete_sweep),
      ),
      appBar: AppBar(
        title: Text('Products'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Product information',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                letterSpacing: 2.0),
          ),

          Divider(height: 10.0,color: Colors.black,),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: 'Product Name',
            ),
          ),
          TextField(
            controller: quantityController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Quantity',
            ),
          ),
          TextField(
            controller: priceController,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            decoration: InputDecoration(
              labelText: 'Price',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  if (nameController.text.isEmpty ||
                      quantityController.text.isEmpty ||
                      priceController.text.isEmpty) {
                    const snackBar = SnackBar(content: Text('Please fill all fields'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    return;
                  }
                },
                icon: Icon(Icons.add),
                label: Text('Add Product'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  if (nameController.text.isEmpty ||
                      quantityController.text.isEmpty ||
                      priceController.text.isEmpty) {
                    const snackBar = SnackBar(content: Text('Please fill all fields'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    return;
                  }

                },
                icon: Icon(Icons.update),
                label: Text('Update Product'),
              ),
            ],
          ),
          Text(
            'Your Products:',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                letterSpacing: 2.0),
          ),

        ],
      ),
    );
  }
}
