import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_two.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);
  static const route = '/page-one';

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  FocusNode focusPassword = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 81, 133),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "facebook",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: FractionallySizedBox(
                widthFactor: 0.9,
                child: TextField(
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "E-mail",
                  ),
                  onSubmitted: (value) {
                    focusPassword.requestFocus();
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: FractionallySizedBox(
                widthFactor: 0.9,
                child: TextField(
                  focusNode: focusPassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FractionallySizedBox(
              widthFactor: 0.9,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 74, 96, 145),
                    borderRadius: BorderRadius.circular(5)),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      PageTwo.route,
                      
                    );
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(color: Colors.white54, fontSize: 25),
                  ),
                ),
              ),
            ),
            const Text(
              "Sign Up for Facebook",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Need Help?",
              style: TextStyle(color: Colors.white70, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
