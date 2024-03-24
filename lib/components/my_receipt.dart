import 'package:flutter/material.dart';
import 'package:food_delivery/model/restaurant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Thank you for your order!"),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8),
            child: Consumer<Restaurant>(
              builder: (context,restaurant,child)=>
              Text(restaurant.displayReceipt()),
            ),
          ),
          const SizedBox(height: 16),
          const Text("Estimated delivery time is: 4:10 PM"),
        ],
      ),
    ),

    );
  }
}
