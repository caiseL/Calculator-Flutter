import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<dynamic> nums = [9, 8, 7, "+", 6, 5, 4, "-", 3, 2, 1, "*"];
    final size = MediaQuery.of(context).size;
    return SafeArea(
      top: false,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text("Calculadora"),
        ),
        body: Column(
          children: [
            Container(
              height: size.height * 0.25,
              color: Colors.white,
            ),
            GridView.builder(
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemBuilder: (BuildContext context, index) {
                return Container(
                  color: Color.fromARGB(255, 32, 32, 32),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        nums[index].toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
