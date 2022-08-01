import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);
  static const route = "/page-two";

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  var isClicked = false;

  void changedClick() {
    isClicked = !isClicked;
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 81, 133),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return FractionallySizedBox(
              widthFactor: 0.8,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 201, 194, 194),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: Image.asset("images/cr7.jpg").image,
                      ),
                      const Text(
                        "Cristiano Ronaldo",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          changedClick();
                        },
                        child: AnimatedRotation(
                          turns: isClicked ? 1 : 0,
                          duration: const Duration(microseconds: 500000),
                          child: Icon(
                            Icons.group_add_rounded,
                            size: 30,
                            color: isClicked
                                ? Colors.black
                                : const Color.fromARGB(255, 6, 2, 255),
                          ),
                        ),
                      ),
                      // ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


