import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:food_delivery/model/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';
class Restaurant extends ChangeNotifier{
//list of food menu
final List<Food>menu=[

  //burgers
Food(name: "Classic Cheeseburger",
  description: "A juicy beef patty with method cheddar,lettuce,tomato,and a hint of onion and pickle.",
imagePath: "lib/images/burgers/cheese_burger.png",
 price: 0.99,
 category: FoodCategory.burgers,
availableAddons:[
  Addon(name: "Extra cheese", price: 0.99),
  Addon(name: "Bacon", price: 1.99),
  Addon(name: "Avocado", price: 2.99),
],),
Food(name: "BBQ Bacon Burger",
    description: "Smoky BBQ sauce ,crispy Bacon,and onion rings make this beef berger a savory delight.",
    imagePath: "lib/images/burgers/bbq_burger.png",
    price: 10.99,
    category: FoodCategory.burgers,
    availableAddons:[
      Addon(name: "Grilled Onions", price: 0.99),
      Addon(name: "Jalapenos", price: 1.49),
      Addon(name: "Extra BBQ Sauce", price: 2.99),
    ],),
Food(name: "Veggie Burger",
    description: "A Hearty veggie patty topped with fresh avcado,lettuce,and tomato,served on a whole season.",
    imagePath: "lib/images/burgers/vege_burger.png",
    price: 9.49,
    category: FoodCategory.burgers,
    availableAddons:[
      Addon(name: "Vegan Cheese", price: 0.99),
      Addon(name: "Grilled Mushrooms", price: 1.99),
      Addon(name: "Humans Spread", price: 2.99),
    ],),
Food(name: "Aloha Burger",
    description: "A char-grilled chicken breast topped with a slice of grilled pineapple,Swiss cheese,an beef patty with method cheddar,lettuce,tomato,and a hint of onion and pickle.",
    imagePath: "lib/images/burgers/aloha_burger.png",
    price: 0.99,
    category: FoodCategory.burgers,
    availableAddons:[
      Addon(name: "Extra cheese", price: 0.99),
      Addon(name: "Bacon", price: 1.99),
      Addon(name: "Avocado", price: 2.99),
    ],),
Food(name: "Blue Moon Burger",
    description: "This burger is a blue cheese lover's dream. it features a succulent ground beef patty,A juicy beef patty with method cheddar,lettuce,tomato,and a hint of onion and pickle.",
    imagePath: "lib/images/burgers/bluemoon_burger.png",
    price: 0.99,
    category: FoodCategory.burgers,
    availableAddons:[
      Addon(name: "Sauteed Mushrooms", price: 0.99),
      Addon(name: "Fried Egg", price: 1.99),
      Addon(name: "Spice MAYO", price: 2.99),
    ],),
  //salads
  Food(name: "Caesar Salad",
    description: "Crisp romaine lettuce,paamesan cheese,crutons,and Caesar dressing.",
    imagePath: "lib/images/salads/caesar_salad.png",
    price: 7.99,
    category: FoodCategory.salads,
    availableAddons:[
      Addon(name: "Grilled Chicken", price: 0.99),
      Addon(name: "Anchovies", price: 1.99),
      Addon(name: "Extra Parmesan", price: 2.99),
    ],),
  Food(name: "Geek Salad",
    description: "Tomatoes,cucumbers,red onions,olives,feta cheese with olive oil and herbs.",
    imagePath: "lib/images/salads/geek_salad.png",
    price: 0.99,
    category: FoodCategory.salads,
    availableAddons:[
      Addon(name: "Feta Cheese", price: 0.99),
      Addon(name: "Kalamata Olives", price: 1.99),
      Addon(name: "Grilled Shrimp", price: 2.99),
    ],),
  Food(name: "Quinoa Salad",
    description: "Quinoa mixed with cucumbers,tomatoes,bell peppers,and a lemon vinaigrette.",
    imagePath: "lib/images/salads/quinoa_salad.png",
    price: 9.99,
    category: FoodCategory.salads,
    availableAddons:[
      Addon(name: "Avocado", price: 0.99),
      Addon(name: "Feta Cheese", price: 1.99),
      Addon(name: "Grilled Chicken", price: 2.99),
    ],),
  Food(name: "Asian Sesame Salad",
    description: "Delight in the flavors of the East with this sesame-infused salad.It includes mixed grevy.",
    imagePath: "lib/images/salads/asiansesame_salad.png",
    price: 9.99,
    category: FoodCategory.salads,
    availableAddons:[
      Addon(name: "Mandarin Oranges", price: 0.99),
      Addon(name: "Almond Slivers", price: 1.99),
      Addon(name: "Extra Teriyaki Chicken", price: 2.99),
    ],),
  Food(name: "South West Chicken Salad",
    description: "This Colorful salad combines the zesty flavours of Southeast.It's loaded with mixed grevy.",
    imagePath: "lib/images/salads/southeast_salad.png",
    price: 9.99,
    category: FoodCategory.salads,
    availableAddons:[
      Addon(name: "Sour Cream", price: 0.99),
      Addon(name: "Pico de Gallo", price: 1.99),
      Addon(name: "Guacamole", price: 2.99),
    ],),
  //sides
  Food(name: "Sweet Potato Fries",
    description: "Crispy sweet potato fries with a touch of salt.",
    imagePath: "lib/images/sides/sweet_potato_side.png",
    price: 4.99,
    category: FoodCategory.sides,
    availableAddons:[
      Addon(name: "Cheese Sauce", price: 0.99),
      Addon(name: "Truffle Oil", price: 1.99),
      Addon(name: "Cajun Spice", price: 2.99),
    ],),
  Food(name: "Onion Rings",
    description: "Golden and crispy onion rings,perfect for dipping.",
    imagePath: "lib/images/sides/onion_rings_side.png",
    price: 9.99,
    category: FoodCategory.sides,
    availableAddons:[
      Addon(name: "Ranch Dip", price: 0.99),
      Addon(name: "Spicy Mayo", price: 1.99),
      Addon(name: "Parmesan Dust", price: 2.99),
    ],),
  Food(name: "Garlic Bread",
    description: "Warm and toasty garlic bread,topped with melted butter and parsley.",
    imagePath: "lib/images/sides/garlic_bread_side.png",
    price: 9.99,
    category: FoodCategory.sides,
    availableAddons:[
      Addon(name: "Extra Garlic", price: 0.99),
      Addon(name: "Mozzarella Cheese", price: 1.99),
      Addon(name: "Marinara Dip", price: 2.99),
    ],),
  Food(name: "Loaded Sweet Potato Fries",
    description: "Savory sweet potato fries loaded with melted cheese,smoky bacon bits,and a dollop of sides.",
    imagePath: "lib/images/sides/loadedfries_side.png",
    price: 9.99,
    category: FoodCategory.sides,
    availableAddons:[
      Addon(name: "Sour Cream", price: 0.99),
      Addon(name: "Bacon Bits", price: 1.99),
      Addon(name: "Green Onions", price: 2.99),
    ],),
  Food(name: "Crispy Mac & Cheese Bites",
    description: "Golden brown,bite-sized mac and cheese balls,perfect for on-the-go snacking.Served with gravey.",
    imagePath: "lib/images/sides/mac_side.png",
    price: 4.49,
    category: FoodCategory.sides,
    availableAddons:[
      Addon(name: "Bacon Bits", price: 0.99),
      Addon(name: "Jalapeno Slices", price: 1.99),
      Addon(name: "Sriracha Drizzle", price: 2.99),
    ],),

  //deserts
  Food(name: "Chocolate Brownie",
    description: "Rich and fudgy chocolate brownie,with chunks of chocolate.",
    imagePath: "lib/images/salads/southeast_salad.png",
    price: 9.99,
    category: FoodCategory.desserts,
    availableAddons:[
      Addon(name: "Vanilla Ice Cream", price: 0.99),
      Addon(name: "Hot Fudge", price: 1.99),
      Addon(name: "Whipped Cream", price: 2.99),
    ],),
  Food(name: "Cheesecake",
    description: "Creamy cheesecake on a graham crust ,with a berry compote.",
    imagePath: "lib/images/desserts/cheesecake_dessert.png",
    price: 9.99,
    category: FoodCategory.desserts,
    availableAddons:[
      Addon(name: "Straberry Topping", price: 0.99),
      Addon(name: "Blueberry Compote", price: 1.99),
      Addon(name: "Chocolate Chips", price: 2.99),
    ],),
  Food(name: "Apple Pie",
    description: "Classic apple pie with a flaky crust a cinnamon-spiced apple filling .",
    imagePath: "lib/images/desserts/apple_pie_dessert.png",
    price: 5.49,
    category: FoodCategory.desserts,
    availableAddons:[
      Addon(name: "Caramel Sauce", price: 0.99),
      Addon(name: "Vanilla Ice Cream", price: 1.99),
      Addon(name: "Cinnamon Spice ", price: 2.99),
    ],),
  Food(name: "Red Velvet Lava Cake",
    description: "A delectable red velvet cake with a warm,gooey chocolate Java center,served with a scope.",
    imagePath: "lib/images/desserts/redvelvet_dessert.png",
    price: 5.49,
    category: FoodCategory.desserts,
    availableAddons:[
      Addon(name: "Rasberry Sauce ", price: 0.99),
      Addon(name: "Cream Cheese Icing", price: 1.99),
      Addon(name: "Chocolate Sprinkles", price: 2.99),
    ],),
  Food(name: "Chocolate Brownie",
    description: "Rich and fudgy chocolate brownie,with chunks of chocolate.",
    imagePath: "lib/images/desserts/brownie.png",
    price: 9.99,
    category: FoodCategory.desserts,
    availableAddons:[
      Addon(name: "Vanilla Ice Cream", price: 0.99),
      Addon(name: "Hot Fudge", price: 1.99),
      Addon(name: "Whipped Cream", price: 2.99),
    ],),
  //drinks
  Food(name: "Lemonade",
    description: "Refreshing Lemonade made with real lemons and a touch of sweetness.",
    imagePath: "lib/images/drinks/lemonade_drink.png",
    price: 2.99,
    category: FoodCategory.drinks,
    availableAddons:[
      Addon(name: "Straberry Flavour", price: 0.99),
      Addon(name: "Mint Leaves", price: 1.99),
      Addon(name: "Ginger Zest", price: 2.99),
    ],),
  Food(name: "Iced Tea",
    description: "Chilled iced tea with a hint of lemon,served over ice.",
    imagePath: "lib/images/drinks/ice_tea_drink.png",
    price: 2.99,
    category: FoodCategory.drinks,
    availableAddons:[
      Addon(name: "Peach Flavor", price: 0.99),
      Addon(name: "Lemon Slices", price: 1.99),
      Addon(name: "Honey", price: 2.99),
    ],),
  Food(name: "Smoothie",
    description: "A blend of fresh fruits and yogurt,perfect for a healthy boost.",
    imagePath: "lib/images/drinks/smoothie_drink.png",
    price: 2.99,
    category: FoodCategory.drinks,
    availableAddons:[
      Addon(name: "Protien Powder", price: 0.99),
      Addon(name: "Almond Milk", price: 1.99),
      Addon(name: "Chia Seeds", price: 2.99),
    ],),
  Food(name: "Mojito",
    description: "A classic Cuban cocktail with muddled line and mint,sweetened with sugar.",
    imagePath: "lib/images/drinks/mojito_drink.png",
    price: 4.99,
    category: FoodCategory.drinks,
    availableAddons:[
      Addon(name: "Extra Mint", price: 0.99),
      Addon(name: "Raspberry Puree", price: 1.99),
      Addon(name: "Splash of Coconut Rum", price: 2.99),
    ],),
  Food(name: "Caramel Macchiato",
    description: "Alayered coffie drink with steamed milk ,espresso,and vanilla syrup.",
    imagePath: "lib/images/drinks/caramel_drink.png",
    price: 4.99,
    category: FoodCategory.drinks,
    availableAddons:[
      Addon(name: "Extra Shot of Espresso", price: 0.99),
      Addon(name: "Hazelnut Syrup", price: 1.99),
      Addon(name: "Whipped Cream", price: 2.99),
    ],),];

//user cart
  final List<CartItem>_cart=[];

 //delivery address (which user can change/update)
 String _deliveryAddress='iiitkottayam kerala';
/*
G E T T E R S
 */
List<Food>get menu1=>menu;
List<CartItem>get cart=> _cart;
String get deliveryAddress =>_deliveryAddress;
/*
O P E R A T I O N S
 */


// add to cart
void addToCart(Food food,List<Addon>selectedAddons) {
  //see if the food items are the same
  CartItem? cartItem = _cart.firstWhereOrNull((item) {
    //check if the food items are the same
    bool isSameFood = item.food == food;
    //check if the list of selected addons are the same
    bool isSameAddons = const ListEquality().equals(
        item.selectedAddons, selectedAddons);
    return isSameFood && isSameAddons;
  });
  //if item already exists,increase it's quantity
  if (cartItem != null) {
    cartItem.quantity++;
  }
  //otherwise,add a new cart item to the cart
  else {
    _cart.add(CartItem(food: food, selectedAddons: selectedAddons,
    ),
    );
  }
  notifyListeners();
}
//remove from cart
void removeFromCart(CartItem cartItem) {
  int cartIndex = _cart.indexOf(cartItem);

  if (cartIndex != -1) {
    if (_cart[cartIndex].quantity > 1) {
      _cart[cartIndex].quantity--;
    } else {
      _cart.removeAt(cartIndex);
    }
  }
  notifyListeners();
}
//get total price of cart
double getTotalPrice(){
  double total=0.0;
  for(CartItem cartItem in _cart){
    double itemTotal=cartItem.food.price;
    for(Addon addon in cartItem.selectedAddons){
      itemTotal+=addon.price;
    }
    total+=itemTotal*cartItem.quantity;
  }
  return total;
}
//get total number of items in cart
int getTotalItemCount(){
  int totalItemCount=0;

  for(CartItem cartItem in _cart){
    totalItemCount+=cartItem.quantity;
  }
  return totalItemCount;
}
//clear cart
void clearCart(){
  _cart.clear();
  notifyListeners();
}

//update delivery address
  void updateDeliveryAddress(String newAddress){
  _deliveryAddress=newAddress;
  notifyListeners();
  }
/*
H E L P E R S
 */

//generate a receipt
String displayReceipt(){
  final receipt=StringBuffer();
  receipt.writeln("Here's your receipt.");
  receipt.writeln();

  //format the date to include up to seconds only

  String formattedDate=
      DateFormat('yyyy-mm-dd HH:mm:ss').format(DateTime.now());
  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln("_________________");

  for(final cartItem in _cart){
    receipt.writeln(
      "${cartItem.quantity}* ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}"
    );
    if(cartItem.selectedAddons.isNotEmpty){
      receipt
      .writeln("  Add-ons:  ${_formatAddons(cartItem.selectedAddons)}");
    }
    receipt.writeln();
  }
  receipt.writeln("_______________");
  receipt.writeln();
  receipt.writeln("Total items: ${getTotalItemCount()}");
  receipt.writeln("Total Price : ${_formatPrice(getTotalPrice())}");
  receipt.writeln();
  receipt.writeln("Delivery to: $deliveryAddress");

  return receipt.toString();
}
//format double value into money
String _formatPrice(double price){
  return "\$${price.toStringAsFixed(2)}";
}
//format list of addons into a string summary
String _formatAddons(List<Addon>addons){
  return addons.map((addon)=> "${addon.name}(${_formatPrice(addon.price)}").join(", ");
}
}