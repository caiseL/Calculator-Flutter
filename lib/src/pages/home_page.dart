import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _buttonClicked() {
    setState(() {
      _input = _input.replaceAll(",", "");
    });
  }

  String _input = "";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      top: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Calculator"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Container(
                alignment: Alignment.centerRight,
                height: size.height * 0.25,
                color: Colors.white,
                child:
                    Text(_input, style: Theme.of(context).textTheme.headline3),
              ),
            ),
            _buttons(),
          ],
        ),
      ),
    );
  }

  Widget _buttons() {
    final _blue = Colors.blue;
    final _red = Colors.red;

    return GridView.count(
      childAspectRatio: 1.25,
      shrinkWrap: true,
      crossAxisCount: 4,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: [
        Container(
          color: _red,
          child: TextButton(
            onPressed: () {
              _input = "";
              _buttonClicked();
            },
            child: Text(
              "C",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {
              _input = _input.substring(0, _input.length - 1);
              _buttonClicked();
            },
            child: Text(
              "⌫",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {
              _input += "MOD";
              _buttonClicked();
            },
            child: Text(
              "%",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {
              _input += "÷";
              _buttonClicked();
            },
            child: Text(
              "÷",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "7";
              _buttonClicked();
            },
            child: Text(
              "7",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "8";
              _buttonClicked();
            },
            child: Text(
              "8",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "9";
              _buttonClicked();
            },
            child: Text(
              "9",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {
              _input += "×";
              _buttonClicked();
            },
            child: Text(
              "×",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "4";
              _buttonClicked();
            },
            child: Text(
              "4",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "5";
              _buttonClicked();
            },
            child: Text(
              "5",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "6";
              _buttonClicked();
            },
            child: Text(
              "6",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {
              _input += "-";
              _buttonClicked();
            },
            child: Text(
              "-",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "1";
              _buttonClicked();
            },
            child: Text(
              "1",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "2";
              _buttonClicked();
            },
            child: Text(
              "2",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "3";
              _buttonClicked();
            },
            child: Text(
              "3",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: _blue,
          child: TextButton(
            onPressed: () {
              _input += "+";
              _buttonClicked();
            },
            child: Text(
              "+",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += ".";
              _buttonClicked(); // ?
            },
            child: Text(
              ".",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "0";
              _buttonClicked();
            },
            child: Text(
              "0",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            onPressed: () {
              _input += "00";
              _buttonClicked();
            },
            child: Text(
              "00",
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
        _equals(),
      ],
    );
  }

  Widget _equals() {
    return Container(
      color: Colors.red,
      child: TextButton(
        onPressed: () {
          getAnswer();
          print(_input);
          setState(() {});
        },
        child: Text(
          "=",
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
    );
  }

  void getAnswer() {
    _input = _input.replaceAll(",", "");
    _input = _input.replaceAll("×", "*");
    _input = _input.replaceAll("÷", "/");
    _input = _input.replaceAll("MOD", "%");
    _input = _input.replaceAll("-", "-");
    _input = _input.replaceAll("+", "+");
    print(_input);
    try {
      Parser p = Parser();
      Expression exp = p.parse(_input);

      ContextModel cm = ContextModel();
      _input = "${exp.evaluate(EvaluationType.REAL, cm)}";
      formatNumber();
    } catch (e) {
      print(e);
      _input = "ERROR";
    }
  }

  void formatNumber() {
    double res = double.parse(_input);
    NumberFormat f = NumberFormat("###,###,###");

    if (res > 1000000000000) {
      _input = res.toStringAsPrecision(5);
    } else if (res == res.roundToDouble()) {
      _input = f.format(res);
    } else {
      _input = res.toStringAsPrecision(5);
    }
  }
}
