import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/model/restaurant.dart';
import 'package:provider/provider.dart';


class MyCurrentLocation extends StatelessWidget {
   MyCurrentLocation({super.key});

   final textController=TextEditingController();

  void openLocationSearchBox(BuildContext context){
showDialog(
context:context,
builder: (context)=>AlertDialog(
  title: const Text("Your Location"),
  content:  TextField(
    controller: textController,
  decoration: InputDecoration(hintText: "Enter address.."),
  ),
  actions: [
    //cancel button
    MaterialButton(onPressed: ()=> Navigator.pop(context),
    child: const Text('Cancel'),
    ),

    //save button
    MaterialButton(
      onPressed: (){
        //update delivery address
        String newAddress=textController.text;
        context.read<Restaurant>().updateDeliveryAddress(newAddress);
        Navigator.pop(context);
      textController.clear();},
      child: const Text('Save'),
    ),
  ],
  ),
);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver Now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: ()=>openLocationSearchBox(context) ,
            child: Row(
              children: [
                //address
                Consumer<Restaurant>(
                  builder:(context,restaurant,child)=>Text(
                    restaurant.deliveryAddress,
                       style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                //drop down menu
                 Icon(Icons.keyboard_arrow_down_rounded,
                 color: Theme.of(context).colorScheme.inversePrimary,
                 )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
