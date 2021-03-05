import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void _actualiza() {
    setState(() {});
  }

  String _input = "";

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
            onPressed: () {
              _input = _input.substring(0, _input.length - 1);
              _actualiza();
            },
            child: Icon(Icons.delete),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {
              _input += "MOD";
              _actualiza();
            },
            child: Text(
              "%",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {
              _input += "/";
              _actualiza();
            },
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
            onPressed: () {
              _input += "4";
              _actualiza();
            },
            child: Text(
              "4",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "5";
              _actualiza();
            },
            child: Text(
              "5",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "6";
              _actualiza();
            },
            child: Text(
              "6",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {
              _input += "-";
              _actualiza();
            },
            child: Text(
              "-",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "1";
              _actualiza();
            },
            child: Text(
              "1",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "2";
              _actualiza();
            },
            child: Text(
              "2",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "3";
              _actualiza();
            },
            child: Text(
              "3",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {
              _input += "+";
              _actualiza();
            },
            child: Text(
              "+",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += ".";
              _actualiza();
            },
            child: Text(
              ".",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "0";
              _actualiza();
            },
            child: Text(
              "0",
              style: _buttonStyle,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "00";
              _actualiza();
            },
            child: Text(
              "00",
              style: _buttonStyle,
            ),
          ),
        ),
        _equals(),
      ],
    );
  }

  String multiplication(String number) {
    var list = number.split("X");
    double res = 1;
    for (String number in list) {
      res *= double.parse(number);
    }
    return res.toString();
  }

  String substraction(String number) {
    var list = number.split("-");
    double res = 0;
    for (String number in list) {
      res -= double.parse(number);
    }
    return res.toString();
  }

  String division(String number) {
    var list = number.split("/");
    double res = 1;
    for (String number in list) {
      res /= double.parse(number);
    }

    return res.toString();
  }

  Widget _equals() {
    return Container(
      color: Colors.red,
      child: TextButton(
        onPressed: () {
          double res = 0;

          if (_input.contains("+") ||
              _input.contains("X") ||
              _input.contains("-") ||
              _input.contains("/")) {
            // check if _input contains one of these symbols
            if (!_input.endsWith("+") ||
                !_input.endsWith("X") ||
                !_input.endsWith("-") ||
                !_input.endsWith("/")) {
              // if it ends with a symbol, you can't do anything
              var list = _input.split("+");
              for (String number in list) {
                if (number.contains("-")) {
                  number = substraction(number);
                } else if (number.contains("/")) {
                  number = division(number);
                } else if (number.contains("X")) {
                  number = multiplication(number);
                }
                res += double.parse(number);
              }
              print(list);
            } else {
              // Add a vibration
              return "Can't";
            }
          }
          print(res);
          if (res == res.roundToDouble()) {
            // It's an integer
            _input = res.round().toString(); // round it cause it's an integer
          } else {
            // It's a double
            _input = res.toString();
          }
          _actualiza();
        },
        child: Text(
          "=",
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
    );
  }
}
