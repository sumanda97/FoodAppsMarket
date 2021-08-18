part of 'models.dart';

enum FoodType { new_food, popular, recommended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  factory Food.fromJson(Map<String, dynamic> data) => Food(
      id: data['id'],
      picturePath: data['picturePath'],
      name: data['name'],
      description: data['description'],
      ingredients: data['ingredients'],
      price: data['price'],
      rate: (data['rate'] as num).toDouble(),
      types: data['types'].toString().split(',').map((e) {
        switch (e) {
          case 'recommended':
            return FoodType.recommended;
            break;
          case 'popular':
            return FoodType.popular;
            break;
          default:
            return FoodType.new_food;
        }
      }).toList());

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://i.pinimg.com/236x/7a/e5/b6/7ae5b61d192c9e226da7d80296fa0a09.jpg",
      name: "Mie Padeh",
      description: "Mie Padeh Yang Rasa nya Anjing Banget.",
      ingredients: "Mie, Timun, Telur, Cabe",
      price: 150000,
      rate: 4.2,
      types: [FoodType.new_food, FoodType.popular, FoodType.recommended]),
  Food(
      id: 2,
      picturePath:
          "https://i.pinimg.com/564x/6e/d7/d0/6ed7d028cb32c294790fbd6ac6440f5d.jpg",
      name: "Martabak Mie Padeh",
      description:
          "Martabak Mesir Yang Dikombinasikan Dengan Mie Rasa Padeh Mantapp.",
      ingredients: "Tepung, Telur, Mie, Cabe, Timun",
      price: 750000,
      rate: 4.5),
  Food(
      id: 3,
      picturePath:
          "https://i.pinimg.com/564x/10/c4/4b/10c44bb9328a121142ae6f7ad8cd1872.jpg",
      name: "Mie Padeh Full Topping",
      description: "Mie Padeh Lengka Dengan Toping Bacon dan Sosis Sonais.",
      ingredients: "Mie, Telur, Cabe, Bacon, Sosis",
      price: 105900,
      rate: 3.9,
      types: [FoodType.new_food]),
  Food(
      id: 4,
      picturePath:
          "https://i.pinimg.com/564x/a3/5d/1b/a35d1b8a2bb1f0bb25bbea09ff40c361.jpg",
      name: "Mie Padeh Mewah",
      description: "Mie Padeh Mewah Yang Rasa nya Kalau Dimakan Seperti IronMan.",
      ingredients: "Mie, Timun, Telur, Cabe",
      price: 60000,
      rate: 4.9,
      types: [FoodType.recommended]),
  Food(
      id: 5,
      picturePath:
          "https://i.pinimg.com/564x/6a/20/78/6a2078aef043e103c36315044ca7fd24.jpg",
      name: "Mie Padeh Topping Sosis",
      description:
          "Bukan Sosis Biasa ini Sosis Berkualitas Khas Padang Panjang.",
      ingredients: "Mie, Timun, Telur, Cabe, Sosis",
      price: 350000,
      rate: 3.4)
];
