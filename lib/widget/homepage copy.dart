import 'package:doctorsapp/screens/signin_screen.dart';
import 'package:flutter/material.dart';


class ho extends StatelessWidget {
  const ho({super.key});

  @override
  Widget build(BuildContext context) {
      return  Scaffold(
      body: ListView(
        children: [
          Container(
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(margin: const EdgeInsets.only(top: 110,right: 180),
                                    child: const Text("Welcome to\nAppname",
                                    style: TextStyle(
                                      fontSize: 33,
                                      fontWeight: FontWeight.bold,
                                     
                                    ),
                                    ),
                                  ),
                                         Container(margin: const EdgeInsets.only(top: 300,left: 5),
                                    child: const Text("Read our                          . Tap Agree and  continue\nto accept the                        .",
                                    style: TextStyle(
                                      fontSize: 17.5,
                                      fontWeight: FontWeight.bold,
                                     color: Color(0xFFACADB9)
                                    ),
                                    ),
                                  ),
                                  Container(margin: const EdgeInsets.only(top: 50),
                                    height: 50,
                                    width: 370,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF1D1A5D),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                     child: ElevatedButton (
                                  onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen(),));
                                },
                                 
                                
                                    child: const Center(
                                      child: Text("AGREE AND CONTINUE",
                                        style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                       color: Colors.white
                                      ),
                                      ),
                                    ),
                                  ),),
                  ],
                ),
              ),
              Container(margin: const EdgeInsets.only(top: 500,left: 92),
                child: const Text("Privacy Policy",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600
                ),
                ),
              ),
               Container(margin: const EdgeInsets.only(top: 520,left: 92),
                child: const Text("Terms of Service",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600
                ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

 