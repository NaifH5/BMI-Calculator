import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF22252A),
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF64676E),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 30, 25, 30),
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: Color(0xFF494A4F),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9),
                            child: SvgPicture.asset(
                              "images/Male.svg",
                              color: Color(0xFF81b632),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: Color(0xFF494A4F),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'y/o',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFF81b632),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '24',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF81b632),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: Color(0xFF494A4F),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'cm',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFF81b632),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '170',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF81b632),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: Color(0xFF494A4F),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'kg',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFF81b632),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '60',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF81b632),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: SizedBox(
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(
                      height: 290,
                      width: 250,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                "images/BMI_Meter.svg",
                                height: 260,
                                width: 260,
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: 30 * (3.14 / 180),
                            child: Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  "images/Pointer.svg",
                                  color: Color(0xFF22252A),
                                  height: 260,
                                  width: 260,
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'BMI',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF6A6D72),
                                    ),
                                  ),
                                  Text(
                                    '23.5',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF81B632),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Very Severely Underweight',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                    Text(
                                      '18.5 - 24.9',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF6A6D72),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 0,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                            color: Color(0xFF81B632),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                color: Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Very Severely Underweight (<=15.9)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                            color: Color(0xFF81B632),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                color: Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Severely Underweight (16.0 - 16.9)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                            color: Color(0xFF81B632),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                color: Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Underweight (17.0 - 18.4)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: SizedBox(
                        width: 5,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                            color: Color(0xFF81B632),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                color: Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Normal (18.5 - 24.9)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                            color: Color(0xFF81B632),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                color: Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Overweight (25.0 - 29.9)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: SizedBox(
                        width: 5,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                            color: Color(0xFF81B632),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                color: Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Obese Class I (30.0 - 34.9)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                            color: Color(0xFF81B632),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                color: Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Obese Class II (35.0 - 39.9)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: SizedBox(
                        width: 5,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                            color: Color(0xFF81B632),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                color: Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Obese Class III (>=40.0)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 0,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'TIPS',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
