// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:foodapp/details.dart';
import 'package:foodapp/drawer.dart';

class signin1 extends StatefulWidget {
  const signin1({super.key});

  @override
  State<signin1> createState() => _signin1State();
}

class _signin1State extends State<signin1> {
  Widget categoriesContainer({required String image, required String name}) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(left: 20),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image)),
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      Text(
        name,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ]);
  }

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

  Widget drawerIcon({required String name, required IconData icon}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        name,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
            child: Container(
          color: const Color(0xff2a2e2e),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/back.jpg"),
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/rl.jpg"),
                ),
                accountName: Text(" muthu lakshmi"),
                accountEmail: Text("muthu1013@gmail.com"),
              ),
              drawerIcon(icon: Icons.person, name: "profile"),
              drawerIcon(icon: Icons.add_shopping_cart, name: "Cart"),
              drawerIcon(icon: Icons.shop, name: "Order"),
              const Divider(
                thickness: 3,
                color: Colors.white,
              ),
              const ListTile(
                leading: Text(
                  "Comunication",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              drawerIcon(icon: Icons.lock, name: "Change"),
              drawerIcon(icon: Icons.exit_to_app, name: "Log Out"),
            ],
          ),
        )),
      ),
      appBar: AppBar(
        elevation: 0.0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(9.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/rl.jpg"),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              style: const TextStyle(color: Color.fromARGB(31, 216, 210, 210)),
              decoration: InputDecoration(
                hintText: "search food",
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 182, 177, 177)),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 194, 190, 190),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 80, 76, 76),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Within the `FirstRoute` widget

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const category()),
                    );
                  },
                  child: categoriesContainer(
                      image: "assets/noodles.png", name: "Noodles"),
                ),
                categoriesContainer(image: "assets/bur.png", name: "Burger"),
                categoriesContainer(image: "assets/pizza.png", name: "Pizza"),
                categoriesContainer(
                    image: "assets/frychicken.png", name: "Chicken"),
                categoriesContainer(image: "assets/cik.png", name: "kfc"),
                categoriesContainer(image: "assets/tikka.png", name: "tikka"),
              ],
            ),
          ),
          Container(
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
                GestureDetector(
                  onTap: () {
                    // Within the `FirstRoute` widget

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Details()),
                    );
                  },
                  child: botoncontainer(
                    image: "assets/pizza.png",
                    name: "Butter \n Pizza",
                    price: 200,
                  ),
                ),
                botoncontainer(
                  image: "assets/veg.png",
                  name: "Veg Pizza",
                  price: 150,
                ),
                botoncontainer(
                  image: "assets/sand.png",
                  name: "sandveg",
                  price: 100,
                ),
                botoncontainer(
                  image: "assets/fry.png",
                  name: "Franch Fry",
                  price: 50,
                ),
                botoncontainer(
                  image: "assets/tikka.png",
                  name: "tikka",
                  price: 120,
                ),
                botoncontainer(
                  image: "assets/shaw.png",
                  name: "shawarma",
                  price: 120,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
