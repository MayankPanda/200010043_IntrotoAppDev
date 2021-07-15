import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Calc(),
    ));

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  num display = 0.0;
  num v = 0.0;

  String Oper = '';
  bool pointClicked = false;
  bool OperClicked = false;
  num displayDecimalcount = 0;
  num vDecimalcount = 0;
  num Calc(num v1, num v2, String o) {
    num result;
    if (o == '+')
      result = v1 + v2;
    else if (o == '-')
      result = v1 - v2;
    else if (o == '/')
      result = v1 / v2;
    else
      result = v1 * v2;
    return result;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Center(
          child: Column(
            children: [
              if (OperClicked)
                Text(
                  "$display$Oper$v",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 40),
                ),
              if (!OperClicked)
                Text(
                  "$display$Oper",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 40),
                ),
              Center(
                child: Row(
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          if ((!OperClicked) && (!pointClicked))
                            display = display * 10 + 7;
                          else if ((OperClicked) && (!pointClicked))
                            v = v * 10 + 7;
                          else if ((!OperClicked) && (pointClicked))
                            display += 7 / pow(10, ++displayDecimalcount);
                          else if ((OperClicked) && (pointClicked))
                            v += 7 / pow(10, ++vDecimalcount);
                        });
                      },
                      child: const Text('7'),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          if ((!OperClicked) && (!pointClicked))
                            display = display * 10 + 8;
                          else if ((OperClicked) && (!pointClicked))
                            v = v * 10 + 8;
                          else if ((!OperClicked) && (pointClicked))
                            display += 8 / pow(10, ++displayDecimalcount);
                          else if ((OperClicked) && (pointClicked))
                            v += 8 / pow(10, ++vDecimalcount);
                        });
                      },
                      child: const Text('8'),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          if ((!OperClicked) && (!pointClicked))
                            display = display * 10 + 9;
                          else if ((OperClicked) && (!pointClicked))
                            v = v * 10 + 9;
                          else if ((!OperClicked) && (pointClicked))
                            display += 9 / pow(10, ++displayDecimalcount);
                          else if ((OperClicked) && (pointClicked))
                            v += 9 / pow(10, ++vDecimalcount);
                        });
                      },
                      child: const Text('9'),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          Oper = '/';
                          OperClicked = true;
                          pointClicked = false;
                        });
                      },
                      child: const Text('/'),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if ((!OperClicked) && (!pointClicked))
                          display = display * 10 + 4;
                        else if ((OperClicked) && (!pointClicked))
                          v = v * 10 + 4;
                        else if ((!OperClicked) && (pointClicked))
                          display += 4 / pow(10, ++displayDecimalcount);
                        else if ((OperClicked) && (pointClicked))
                          v += 4 / pow(10, ++vDecimalcount);
                      });
                    },
                    child: const Text('4'),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if ((!OperClicked) && (!pointClicked))
                          display = display * 10 + 5;
                        else if ((OperClicked) && (!pointClicked))
                          v = v * 10 + 5;
                        else if ((!OperClicked) && (pointClicked))
                          display += 5 / pow(10, ++displayDecimalcount);
                        else if ((OperClicked) && (pointClicked))
                          v += 5 / pow(10, ++vDecimalcount);
                      });
                    },
                    child: const Text('5'),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if ((!OperClicked) && (!pointClicked))
                          display = display * 10 + 6;
                        else if ((OperClicked) && (!pointClicked))
                          v = v * 10 + 6;
                        else if ((!OperClicked) && (pointClicked))
                          display += 6 / pow(10, ++displayDecimalcount);
                        else if ((OperClicked) && (pointClicked))
                          v += 6 / pow(10, ++vDecimalcount);
                      });
                    },
                    child: const Text('6'),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        Oper = '*';
                        OperClicked = true;
                        pointClicked = false;
                      });
                    },
                    child: const Text('*'),
                  )
                ],
              ),
              Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if ((!OperClicked) && (!pointClicked))
                          display = display * 10 + 1;
                        else if ((OperClicked) && (!pointClicked))
                          v = v * 10 + 1;
                        else if ((!OperClicked) && (pointClicked))
                          display += 1 / pow(10, ++displayDecimalcount);
                        else if ((OperClicked) && (pointClicked))
                          v += 1 / pow(10, ++vDecimalcount);
                      });
                    },
                    child: const Text('1'),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if ((!OperClicked) && (!pointClicked))
                          display = display * 10 + 2;
                        else if ((OperClicked) && (!pointClicked))
                          v = v * 10 + 2;
                        else if ((!OperClicked) && (pointClicked))
                          display += 2 / pow(10, ++displayDecimalcount);
                        else if ((OperClicked) && (pointClicked))
                          v += 2 / pow(10, ++vDecimalcount);
                      });
                    },
                    child: const Text('2'),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if ((!OperClicked) && (!pointClicked))
                          display = display * 10 + 3;
                        else if ((OperClicked) && (!pointClicked))
                          v = v * 10 + 3;
                        else if ((!OperClicked) && (pointClicked))
                          display += 3 / pow(10, ++displayDecimalcount);
                        else if ((OperClicked) && (pointClicked))
                          v += 3 / pow(10, ++vDecimalcount);
                      });
                    },
                    child: const Text('3'),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        Oper = '-';
                        OperClicked = true;
                        pointClicked = false;
                      });
                    },
                    child: const Text('-'),
                  )
                ],
              ),
              Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        pointClicked = true;
                      });
                    },
                    child: const Text('.'),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if ((!OperClicked) && (!pointClicked))
                          display = display * 10;
                        else if ((OperClicked) && (!pointClicked))
                          v = v * 10;
                        else if ((!OperClicked) && (pointClicked))
                          display += 0 / pow(10, ++displayDecimalcount);
                        else if ((OperClicked) && (pointClicked))
                          v += 0 / pow(10, ++vDecimalcount);
                      });
                    },
                    child: const Text('0'),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if ((!OperClicked) && (!pointClicked))
                          display = display * 100;
                        else if ((OperClicked) && (!pointClicked))
                          v = v * 100;
                        else if ((!OperClicked) && (pointClicked))
                          display += 0 / pow(10, displayDecimalcount += 2);
                        else if ((OperClicked) && (pointClicked))
                          v += 0 / pow(10, vDecimalcount += 2);
                      });
                    },
                    child: const Text('00'),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        Oper = '+';
                        OperClicked = true;
                        pointClicked = false;
                      });
                    },
                    child: const Text('+'),
                  )
                ],
              ),
              Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        display = 0.0;
                        Oper = '';
                        v = 0.0;
                        pointClicked = false;
                        vDecimalcount = 0;
                        displayDecimalcount = 0;
                        OperClicked = false;
                      });
                    },
                    child: const Text('CLR'),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (Oper != '') display = Calc(display, v, Oper);
                        OperClicked = false;
                        v = 0.0;
                        Oper = '';
                        pointClicked = false;
                        displayDecimalcount = 0;
                        vDecimalcount = 0;
                      });
                    },
                    child: const Text('='),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
