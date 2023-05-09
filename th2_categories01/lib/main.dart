import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          actions: [
            const Icon(
              Icons.search_rounded,
              color: Colors.grey,
            ),
            const Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 15, right: 20),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.grey,
                  ),
                ),
                Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: Container(
                    margin: EdgeInsets.only(top: 8, right: 15),
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
          centerTitle: false,
          title: const Text(
            "Categories",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          color: Colors.grey,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(top: 5, right: 2),
                    color: Colors.white,
                    child: Column(
                      children: [
                        container1(imageName: 'ao', textName: 'Fashion'),
                        container1(imageName: 'people', textName: 'Beauty'),
                        container1(
                            imageName: 'electric', textName: 'Electronics'),
                        container1(imageName: 'foot', textName: 'Footwear'),
                        container1(imageName: 'toys', textName: 'Toys'),
                        container1(
                            imageName: 'furniture', textName: 'Furniture'),
                        container1(imageName: 'mobie', textName: 'Mobiles'),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(top: 5, left: 2),
                    color: Colors.deepPurple[50],
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container2(
                                  image1: "laptap",
                                  number1: "416",
                                  namesp: "Laptop"),
                              Container2(
                                  image1: "maygiat",
                                  number1: "52",
                                  namesp: "máy giặt"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container2(
                                  image1: "mobie",
                                  number1: "121",
                                  namesp: "mobie"),
                              Container2(
                                  image1: "mobilecover",
                                  number1: "21",
                                  namesp: "mobilecover"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container2(
                                  image1: "mxst",
                                  number1: "81",
                                  namesp: "máy xay "),
                              Container2(
                                  image1: "chuot",
                                  number1: "21",
                                  namesp: "Chuột"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container2(
                                  image1: "powerbank",
                                  number1: "66",
                                  namesp: "Powerbank"),
                              Container2(
                                  image1: "printer",
                                  number1: "21",
                                  namesp: "Printer"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container2(
                                  image1: "smart",
                                  number1: "33",
                                  namesp: "Smart"),
                              Container2(
                                  image1: "styling",
                                  number1: "45",
                                  namesp: "Styling"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container2(
                                  image1: "tablet",
                                  number1: "09",
                                  namesp: "Tablet"),
                              Container2(
                                  image1: "headphone",
                                  number1: "29",
                                  namesp: "Headphone"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Container2 extends StatelessWidget {
  final String image1;
  final String number1;
  final String namesp;
  const Container2({
    required this.image1,
    required this.number1,
    required this.namesp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Align(
            child: Image.asset(
              "images/${image1}.jpg",
              height: 70,
              width: 80,
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Color.fromARGB(205, 233, 30, 220),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                child: Text("${number1}"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text("${namesp}"),
          ),
        ],
      ),
    );
  }
}

class container1 extends StatelessWidget {
  final String imageName;
  final String textName;
  const container1({
    required this.imageName,
    required this.textName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      margin: EdgeInsets.only(bottom: 5),
      height: 110,
      width: double.infinity,
      color: Colors.cyanAccent,
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                "images/${imageName}.jpg",
                width: 50,
                height: 50,
              ),
            ),
          ),
          Text("${textName}"),
        ],
      ),
    );
  }
}
