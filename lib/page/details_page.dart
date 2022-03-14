import 'package:flutter/material.dart';
import 'package:plantapp/data/plant_model.dart';


class DetailsPage extends StatelessWidget {
  final Plants plant;
  const DetailsPage({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height / 2,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                    image: DecorationImage(
                      image: AssetImage(plant.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: plant.name,
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontFamily: 'gilroy',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                                TextSpan(
                                  text: "(${plant.category}plant)",
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontFamily: 'gilroy',
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 30.0,
                            width: 30.0,
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green.withOpacity(0.2),
                                  blurRadius: 15,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image.asset(
                              'assets/icons/heart.png',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      RichText(
                        text: TextSpan(
                          text: plant.description,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontFamily: 'gilroy',
                            fontSize: 15.0,
                            height: 1.4,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Treatment',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.9),
                          fontFamily: 'gilroy',
                          fontSize: 18.0,
                          height: 1.4,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.6,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/icons/sun.png',
                            color: Colors.black,
                            height: 20.0,
                          ),
                          Image.asset(
                            'assets/icons/drop.png',
                            color: Colors.black,
                            height: 20.0,
                          ),
                          Image.asset(
                            'assets/icons/temperature.png',
                            color: Colors.black,
                            height: 20.0,
                          ),
                          Image.asset(
                            'assets/icons/up_arrow.png',
                            color: Colors.black,
                            height: 20.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                Image.asset('assets/icons/cart.png',
                    color: Colors.black, height: 40.0),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 15.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.5),
                      blurRadius: 15,
                      offset: const Offset(0, -15),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Text(
                  'Buy \$${plant.price.toStringAsFixed(0)}',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontFamily: 'gilroy',
                    fontSize: 16.0,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
