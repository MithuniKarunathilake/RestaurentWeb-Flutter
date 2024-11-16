class DetailsUtil{
  final String image;
  final String name;
  final double price;
  final double rating;

  DetailsUtil({
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
});
}
//Burgers
List<DetailsUtil> burgerItems = [
  DetailsUtil(
      image: 'assets/burger.jng',
      name: 'Burger',
      price: 1500.0,
      rating: 4.5
  ),
  DetailsUtil(
      image: 'assets/burger.jng',
      name: 'Burger',
      price: 1500.0,
      rating: 4.5
  ),
  DetailsUtil(
      image: 'assets/burger.jng',
      name: 'Burger',
      price: 1500.0,
      rating: 4.5
  )
];

//Desserts
List<DetailsUtil> dessertItems = [
  DetailsUtil(
      image: 'assets/cake.png',
      name: 'Cake',
      price: 1500.0,
      rating: 4.5
  ),
  DetailsUtil(
      image: 'assets/cake.jng',
      name: 'Cake',
      price: 1500.0,
      rating: 4.5
  ),
  DetailsUtil(
      image: 'assets/cake.jng',
      name: 'Cake',
      price: 1500.0,
      rating: 4.5
  )
];

//Drinks
List<DetailsUtil> drinkItems = [
  DetailsUtil(
      image: 'assets/sprite.jng',
      name: 'Sprite',
      price: 1500.0,
      rating: 4.5
  ),
  DetailsUtil(
      image: 'assets/sprite.jng',
      name: 'Sprite',
      price: 1500.0,
      rating: 4.5
  ),
  DetailsUtil(
      image: 'assets/sprite.jng',
      name: 'Sprite',
      price: 1500.0,
      rating: 4.5
  )
];