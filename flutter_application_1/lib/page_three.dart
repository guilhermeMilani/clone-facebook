import 'package:flutter/material.dart';
import 'dart:math' as math;

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
              widthFactor: 1,
              child: Container(
                //height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Colors.grey.shade300),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      // width: 32, //arrumar
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  radius: 22,
                                  backgroundImage:
                                      Image.asset("images/cr7.jpg").image,
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  "cristiano",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.verified,
                                  size: 16,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              children: const [
                                Icon(Icons.more_horiz),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "images/CR7FEED.jpg",
                      //fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    const SizedBox(width: 10),
                                    const Icon(Icons.favorite_border),
                                    const SizedBox(width: 10),
                                    const Icon(Icons.sms_outlined),
                                    const SizedBox(width: 10),
                                    Transform.rotate(
                                      angle: -math.pi / 4,
                                      child: const Icon(Icons.send_outlined),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(Icons.bookmark_outline_sharp),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  "4.654.897 curtidas",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Text(
                                  "cristiano",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Ferias siiiuuuuuu",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
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
