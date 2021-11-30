import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFF48FB1),
                Color(0xFFF8BBD0),
              ]),
        ),
        child: Column(
          children: [
            const SizedBox(height: 150,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 70,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Align(
                  alignment:Alignment.center,
                  child: Text('MyShop', style: TextStyle(color: Colors.white, fontSize: 40,))),
            ),
            const SizedBox(height: 150,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              height: 270,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'E-mail',
                      ),

                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: ' Confirm Password',
                      ),
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.purple,
                              shape:RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(20),
                              )
                          ),
                          onPressed: (){}, child: const Text('Sign Up', style: TextStyle(color: Colors.white),)),
                    ),
                    const SizedBox(height: 10,),
                    InkWell(
                      child: const Text('SIGNUP INSTEAD',style: TextStyle(color: Colors.purple), ),
                      onTap: (){},
                    ),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
