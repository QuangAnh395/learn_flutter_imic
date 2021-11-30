import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter_imic/screen/home/home_screen/create_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> nameTitle = ['Ao', 'Quan', 'Ao thun'];
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Your Product'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(onTap: () {}, child: const Icon(Icons.add)),
          ),
        ],
        backgroundColor: Colors.purple,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Row(
                  children: [
                    ClipOval(
                      child: Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/images/image1.jpg')),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(width: 70, child: Text(nameTitle[index])),
                    const SizedBox(
                      width: 160,
                    ),
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateScreen(),));
                       },
                       child: const Icon(
                        Icons.create,
                        color: Colors.purple,
                    ),
                     ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
          separatorBuilder: (context, index) => const Divider(
                indent: 10,
                endIndent: 10,
              ),
          itemCount: nameTitle.length),
    );
  }
}
