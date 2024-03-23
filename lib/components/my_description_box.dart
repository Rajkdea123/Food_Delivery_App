import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {

    //teststyle
    var myPrimaryTextStyle=TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle=TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25,top: 25,bottom: 25),
      child: Container(
        decoration: BoxDecoration(
          border:Border.all(color: Theme.of(context).colorScheme.secondary,
          ),borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.only(left: 25,right: 25,bottom: 25),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
            children: [
            Text('\$0.99',
            style: myPrimaryTextStyle,),
            Text('Delivery fee',
            style: mySecondaryTextStyle,),
          ],
          ),

        //delivery time
        Column(
            children: [
              Text('15-30min',
              style: myPrimaryTextStyle,),
            Text('Delivery time',
            style: mySecondaryTextStyle,),
      ],
      ),
        ],

        ),
      ),
    );
  }
}
