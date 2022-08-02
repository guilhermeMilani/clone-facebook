import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);
  static const route = "/page-three";
  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Container(
                height: 550,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.amber,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      //Barra de usuario da publicação
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width: 329, //arrumar
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            children: const [
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.black,
                              ),
                              Text("Cristiano")
                            ],
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      "images/CR7FEED.jpg",
                      //fit: BoxFit.cover,
                    ),
                    Row(
                      //Barra de comentarios, like, etc.
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 150,
                          width: 329, //arrumar
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
