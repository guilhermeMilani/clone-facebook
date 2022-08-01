import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {

  const PageTwo({ Key? key }) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('PageTwo'),),
           body: Container(width: 100,height: 100,),
       );
  }
}