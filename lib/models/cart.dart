import 'shoe.dart';

class Cart {
//list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Grey Dunk',
      price: '400',
      description: 'Versatile sneakers for everyday wear.',
      imagePath: 'lib/images/greyDunk.png',
    ),
    Shoe(
      name: 'Brown Dunk',
      price: '400',
      description: 'Stylish and comfortable brown kicks.',
      imagePath: 'lib/images/greyDunk.png',
    ),
    Shoe(
      name: 'Nike Blazer',
      price: '150',
      description: 'Bold sneakers with a classic touch.',
      imagePath: 'lib/images/greyDunk.png',
    ),
    Shoe(
      name: 'Nike Journey',
      price: '300',
      description: 'Perfect for long walks or active days.',
      imagePath: 'lib/images/greyDunk.png',
    ),
  ];


//list of items in user cart
List<Shoe> userCart = [];


//get list of shoes for sale
List<Shoe> getShoeList() {
  return shoeShop;
}


//get cart
List<Shoe> getUserCart() {
  return userCart;
}


// add items to cart
void addItemToCart(Shoe shoe) {
 userCart.add(shoe);
}


//remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }


}