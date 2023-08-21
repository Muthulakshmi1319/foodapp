import 'package:flutter/material.dart';
import 'package:foodapp/homepage.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const signin1()),
              );
            }),
      ),
      body: Column(
        children: [
          const Expanded(
            child: CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage("assets/pizza.png"),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff3a3e3e),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Butter Pizza",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  const Text(
                    "Any Text...",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(Icons.remove),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "1",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                      const Text(
                        '\$ 150',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Description",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  const Text(
                    'Cutting down other flashy components and icons, each dish is the only one highlighted on the whole screen, in an effort to allow users to directly access their preferences effortlessly. No more unnecessary descriptions, simplicity is the ultimate sophistication.',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Within the `FirstRoute` widget
                    },
                    child: Container(
                      height: size.height / 14,
                      width: size.width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 15, 15, 15),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart, color: Colors.white),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Add To Cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
