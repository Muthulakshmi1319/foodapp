import 'package:flutter/material.dart';

// ignore: camel_case_types
class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

// ignore: camel_case_types
class _categoryState extends State<category> {
  Widget botoncontainer(
      {required String name, required int price, required String image}) {
    return Container(
      height: 230,
      width: 230,
      decoration: BoxDecoration(
          color: const Color(0xff3a3e3e),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(image),
          ),
          ListTile(
            leading: Text(
              name,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            trailing: Text(
              "\$ $price",
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 10,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 10,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 10,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 10,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 510,
      child: GridView.count(
        shrinkWrap: false,
        primary: false,
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          botoncontainer(
            image: "assets/images/pizza.jpg",
            name: "Butter \n Pizza",
            price: 200,
          ),
          botoncontainer(
            image: "assets/images/veg.jpg",
            name: "Veg Pizza",
            price: 150,
          ),
          botoncontainer(
            image: "assets/images/pizza2.jpg",
            name: "Tomato \n Pizza",
            price: 100,
          ),
          botoncontainer(
            image: "assets/images/fry.jpg",
            name: "Franch Fry",
            price: 50,
          ),
          botoncontainer(
            image: "assets/images/fruitpizza.jpg",
            name: "Fruit Pizza",
            price: 120,
          ),
          botoncontainer(
            image: "assets/images/barb.jpg",
            name: "Barbecue \n Pizza",
            price: 120,
          ),
          botoncontainer(
            image: "assets/images/barb.jpg",
            name: "Barbecue \n Pizza",
            price: 120,
          ),
        ],
      ),
    );
  }
}
