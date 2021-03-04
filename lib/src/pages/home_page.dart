import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  String _input = "";

  void _actualiza() {
    setState(() {});
  }

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      top: false,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Calculadora"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: size.height * 0.25,
              color: Colors.white,
              child: Text(_input),
            ),
            _buttons(),
          ],
        ),
      ),
    );
  }

  Widget _buttons() {
    final _buttonStyle = TextStyle(color: Colors.white, fontSize: 25.0);
    final _blue = Colors.blue;
    final _red = Colors.red;
    bool equals = false;

    return GridView.count(
      childAspectRatio: 1.25,
      shrinkWrap: true,
      crossAxisCount: 4,
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 2.0,
      children: [
        Container(
          color: _red,
          child: TextButton(
            onPressed: () {
              _input = "";
              _actualiza();
            },
            child: Text(
              "C",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {},
            child: Icon(Icons.delete),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "%",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "/",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "7";
              _actualiza();
            },
            child: Text(
              "7",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "8";
              _actualiza();
            },
            child: Text(
              "8",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "9";
              _actualiza();
            },
            child: Text(
              "9",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {
              _input += "X";
              _actualiza();
            },
            child: Text(
              "X",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "4",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "5",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "6",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "-",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "1",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "2",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "3",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "+",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {},
            child: Text(
              ".",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "0",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "00",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: _red,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "=",
              style: _buttonStyle,
            ),
          ),
        ),
      ],
    );
  }
}
