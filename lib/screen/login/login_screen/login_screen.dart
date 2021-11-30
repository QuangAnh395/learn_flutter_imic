import 'package:flutter/material.dart';
import 'package:learn_flutter_imic/screen/home/home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {

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
              height: 200,
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
                    Container(
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          shape:RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(20),
                          )
                        ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return HomeScreen();
                              }),
                            );
                          }, child: const Text('Login', style: TextStyle(color: Colors.white),)),
                    ),
                    const SizedBox(height: 10,),
                    InkWell(
                      child: const Text('SIGNUP INSTEAD',style: TextStyle(color: Colors.purple), ),
                      onTap: (){},
                    ),
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
