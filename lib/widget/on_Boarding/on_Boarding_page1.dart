

import 'package:flutter/material.dart';

import '../homepage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0 ; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }
  Widget _indicator(bool isActive) {
    return AnimatedContainer(duration: const Duration(milliseconds: 150),
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    height: 8.0,
    width: isActive ? 10.0 : 10.0,
    decoration: BoxDecoration(
    color: isActive ? const Color(0xFF00003F) : const Color.fromARGB(255, 179, 179, 180),
    borderRadius: const BorderRadius.all(Radius.circular(12))
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
      child: Stack(
        children: <Widget>[
          Container(
            child:  Column(
          children: <Widget>[
        Container(alignment: Alignment.centerRight,
          child: TextButton(
          onPressed: () {  
          },
          child: const Text("Skip",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
          ),
          ),
        ),
         Container(
          height: 600.0,
          child: PageView(physics: const ClampingScrollPhysics(),
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const <Widget>[
                  Center(
                    child:  Image(
                    height: 330,
                    image: AssetImage("assets/doctor1.png")),
                  ),  SizedBox(
                height: 20,
              ),
                 Center(
                   child: Text("Chack Health",
                             style: TextStyle(fontWeight: FontWeight.w900,fontSize: 27,color: Color(0xFF00003F)),
                             ),
                 ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text("""Amet minim mollit non deserunt ullamco est sit\naliqua dolor do amet sint.Velit officia consequat\n                      duis enim velit mollit.""",
                style: TextStyle(fontSize: 18.0,),
                ),
              ),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const <Widget>[
                  Center(
                    child:  Image(
                    height: 330,
                    image: AssetImage("assets/doctor2.png")),
                  ), SizedBox(
                height: 20,
              ),
                 Center(
                   child: Text("Regular Check",
                             style: TextStyle(fontWeight: FontWeight.w900,fontSize: 27,color: Color(0xFF00003F)),
                             ),
                 ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text("""Amet minim mollit non deserunt ullamco est sit\naliqua dolor do amet sint.Velit officia consequat\n                      duis enim velit mollit.""",
                style: TextStyle(fontSize: 18.0,),
                ),
              ),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Center(
                    child:  Image(
                    height: 330,
                    image: AssetImage("assets/doctor3.png")),
                  ), const SizedBox(
                height: 20,
              ),
                 const Center(
                   child: Text("Get Healthy",
                             style: TextStyle(fontWeight: FontWeight.w900,fontSize: 27,color: Color(0xFF00003F)),
                             ),
                 ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text("""Amet minim mollit non deserunt ullamco est sit\naliqua dolor do amet sint.Velit officia consequat\n                      duis enim velit mollit.""",
                style: TextStyle(fontSize: 18.0,),
                ),
              ),const SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: 200,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10)
              ),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ho()));
                },
                child: const Text("Get Started",style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 27,),
                  ),
                ),
              )
                ],
              ),
            ),
          ],
          ),
         ),
       
          ],
        ),
          ),
           Container(margin: const EdgeInsets.only(top: 350),
          child: Stack(
            children: <Widget>[
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildPageIndicator(),
         ),
          ]),
         ),
        ],
      ),
      ),
    );
  }
}