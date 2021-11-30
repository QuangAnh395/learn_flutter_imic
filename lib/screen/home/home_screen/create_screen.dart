import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: const Text('Edit Product'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(onTap: () {}, child: const Icon(
              Icons.save,
              color: Colors.white,
            ),),
          ),
        ],
        backgroundColor: Colors.purple,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            const SizedBox(height: 5,),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Price',
              ),
            ),
            const SizedBox(height: 5,),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
            ),
            const SizedBox(height: 5,),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: const Text('Enter a Url',),
                ),
                const SizedBox(width: 10,),
                Expanded(child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'image Url',
                  ),
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}