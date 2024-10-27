
// import 'package:flutter/material.dart';
// void main() {
//   runApp(const CollegeAlertApp());
//   runApp( const CheckboxExampleApp());
// }
//
// // class InitializationSettings {
// //   final AndroidInitializationSettings android;
// //   InitializationSettings({required this.android});
// // }
//
// class AndroidInitializationSettings {
//   AndroidInitializationSettings(String s);
// }
// class AndroidNotificationDetails {
//   AndroidNotificationDetails(String s, String t, {required importance, required high, required priority}) {
//     // TODO: implement AndroidNotificationDetails
//     throw UnimplementedError();
//   }
// }
//   // runApp( CheckboxExampleApp) {
//   //   // TODO: implement runApp
//   //   throw UnimplementedError();
//   // }
//
// class CheckboxExampleApp extends StatelessWidget {
//   const CheckboxExampleApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Checkbox Sample')),
//         body: const Center(
//        child:CheckboxExampleApp(),
//         ),
//       ),
//     );
//   }
// }
// // class CheckboxExampleApp extends StatefulWidget {
// //   CheckboxExampleApp({super.key})
// //
// //
// //   State<CheckboxExampleApp> createState() {
// //     return _CheckboxExampleAppState();
// //   }
// // }
// //
// // class _CheckboxExampleAppState extends State<CheckboxExampleApp> {
//   bool isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Checkbox Sample'),
//         ),
//         body: Center(
//           child: Checkbox(
//             checkColor: Colors.white,
//             fillColor: WidgetStateProperty.resolveWith((states) {
//               if (states.contains(WidgetState.pressed) ||
//                   states.contains(WidgetState.hovered) ||
//                   states.contains(WidgetState.focused)) {
//                 return Colors.blue;
//               }
//               return Colors.red;
//             }),
//             value: isChecked,
//             onChanged: (bool? value) {
//               setState(() {
//                 isChecked = value ?? false;
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
//
//
//
// void setState(Null Function() param0) {
// }
// class CollegeAlertApp extends StatelessWidget{
//    const CollegeAlertApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'CollegeAlertApp',
//       theme: ThemeData(
//         primarySwatch:Colors.blue,
//       ),
//       home:  const HomeScreen(),
//     );
//   }
// }
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('College Alerts'),
//         )
//         , body: ListView(
//       children: const [
//         ListTile(
//           title: Text('New Event: Workshop'),
//           subtitle: Text('Starts at 10:00 AM'),
//         ),
//         ListTile(
//           title: Text('Announcement: Exam Schedule'),
//           subtitle: Text('Check your email for details'),
//         ),
//       ],
//     ));
//   }
// }
//   widgetBuild(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const CollegeAlertApp());
// }
//
// class CollegeAlertApp extends StatelessWidget {
//   const CollegeAlertApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'CollegeAlertApp',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('College Alerts'),
//       ),
//       body: ListView(
//         children: const [
//           ListTile(
//             title: Text('New Event: Workshop'),
//             subtitle: Text('Starts at 10:00 AM'),
//           ),
//           ListTile(
//             title: Text('Announcement: Exam Schedule'),
//             subtitle: Text('Check your email for details'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// // Checkbox Example
// class CheckboxExampleApp extends StatefulWidget {
//   const CheckboxExampleApp({super.key});
//
//   @override
//   State<CheckboxExampleApp> createState() => _CheckboxExampleAppState();
// }
//
// class _CheckboxExampleAppState extends State<CheckboxExampleApp> {
//   bool isChecked = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Checkbox Sample'),
//       ),
//       body: Center(
//         child: Checkbox(
//           checkColor: Colors.blue,
//           fillColor: WidgetStateProperty.resolveWith((states) {
//             if (states.contains(WidgetState.pressed) ||
//                 states.contains(WidgetState.hovered) ||
//                 states.contains(WidgetState.focused)) {
//               return Colors.blue;
//             }
//             return Colors.red;
//           }),
//           value: isChecked,
//           onChanged: (bool? value) {
//             setState(() {
//               isChecked = value ?? true;
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
import 'package:flutter/material.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key}) ;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return changeNotifierProvider(create: (_) => CartProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ),
                );
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index].name),
              subtitle: Text('\$${products[index].price.toStringAsFixed(2)}'),
              trailing: ElevatedButton(
                onPressed: () {
                  dynamic provider;
                  provider.of<CartProvider>(context, listen: false).addToCart(products[index]);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Added to cart!'),
                    ),
                  );
                },
                child: const Text('Add to Cart'),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget changeNotifierProvider({required CartProvider Function(dynamic _) create, required Scaffold child}) {
    return SizedBox.shrink();  // returns an empty widget

  }
}



class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

List<Product> products = [
  Product(name: 'Product 1', price: 29.99),
  Product(name: 'Product 2', price: 49.99),
  Product(name: 'Product 3', price: 19.99),
];
class CartProvider with ChangeNotifier {
  final List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  void addToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  double get totalPrice {
    return _cartItems.fold(0, (total, current) => total + current.price);
  }
}
class CartScreen extends StatelessWidget {
   CartScreen({super.key}) {
    // TODO: implement CartScreen
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
     dynamic provider;
    final cartProvider = provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: cartProvider.cartItems.isEmpty
          ? const Center(child: Text('Your cart is empty!'))
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartProvider.cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartProvider.cartItems[index].name),
                  subtitle: Text('\$${cartProvider.cartItems[index].price.toStringAsFixed(2)}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total: \$${cartProvider.totalPrice.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}