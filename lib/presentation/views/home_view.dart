import 'package:bloc_test/app_routes.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                      "https://api.dicebear.com/9.x/notionists/png?seed=ahmed&backgroundColor=c0aede&body=variant0${index + 1}"),
                ),
                Text("Image $index")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
