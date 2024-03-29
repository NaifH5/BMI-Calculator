import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.gender,
      required this.age,
      required this.height,
      required this.heightUnit,
      required this.weight,
      required this.weightUnit,
      required this.bmi,
      required this.status,
      required this.range,
      required this.tip1,
      required this.tip2,
      required this.tip3,
      required this.tip4});

  final int gender;
  final double age;
  final double height;
  final String heightUnit;
  final double weight;
  final String weightUnit;
  final double bmi;
  final String status;
  final String range;
  final String tip1;
  final String tip2;
  final String tip3;
  final String tip4;

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
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                MediaQuery.of(context).padding.top,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const Flexible(
                  fit: FlexFit.loose,
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: const Color(0xFF494A4F),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9),
                            child: SvgPicture.asset(
                              gender == 1
                                  ? "images/Female.svg"
                                  : "images/Male.svg",
                              colorFilter: const ColorFilter.mode(
                                  Color(0xFFFFFFFF), BlendMode.srcIn),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: const Color(0xFF494A4F),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        age.toStringAsFixed(0),
                                        style: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Positioned.fill(
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
                                ],
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: const Color(0xFF494A4F),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      (heightUnit == 'feet' ||
                                              heightUnit == 'm')
                                          ? height.toStringAsFixed(1)
                                          : height.toStringAsFixed(0),
                                      style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      heightUnit,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF81b632),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: const Color(0xFF494A4F),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        weight.toStringAsFixed(0),
                                        style: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        weightUnit,
                                        style: const TextStyle(
                                          fontSize: 18,
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
                    const Flexible(
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
                            angle: max(0, min(((bmi - 16) / 24) * 180, 180)) *
                                (3.14 / 180),
                            child: Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  "images/Pointer.svg",
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
                                  const Text(
                                    'BMI',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF6A6D72),
                                    ),
                                  ),
                                  Text(
                                    bmi.toStringAsFixed(1),
                                    style: const TextStyle(
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
                                      status,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                    Text(
                                      range,
                                      style: const TextStyle(
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
                const SizedBox(
                  height: 30,
                ),
                const Divider(
                  height: 0,
                  color: Color(0xFF494a4f),
                ),
                const SizedBox(
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
                            color: const Color(0xFF224af2),
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
                                color: const Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Very Severely Underweight (<=15.9)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF64676e),
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
                            color: const Color(0xFF21a6f3),
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
                                color: const Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Severely Underweight (16.0 - 16.9)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF64676e),
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
                            color: const Color(0xFF40bca3),
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
                                color: const Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Underweight (17.0 - 18.4)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF64676e),
                      ),
                    ),
                    const Flexible(
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
                            color: const Color(0xFF40bc64),
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
                                color: const Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Normal (18.5 - 24.9)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF64676e),
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
                            color: const Color(0xFFd8c335),
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
                                color: const Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Overweight (25.0 - 29.9)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF64676e),
                      ),
                    ),
                    const Flexible(
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
                            color: const Color(0xFFd89935),
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
                                color: const Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Obese Class I (30.0 - 34.9)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF64676e),
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
                            color: const Color(0xFFfc5448),
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
                                color: const Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Obese Class II (35.0 - 39.9)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF64676e),
                      ),
                    ),
                    const Flexible(
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
                            color: const Color(0xFFff1d1d),
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
                                color: const Color(0xFF22252A),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Obese Class III (>=40.0)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF64676e),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 0,
                  color: Color(0xFF494a4f),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'TIPS',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF81b632),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFF81b632),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        tip2,
                        softWrap: true,
                        maxLines: 2,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFF81b632),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        tip3,
                        softWrap: true,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFF81b632),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        tip1,
                        softWrap: true,
                        maxLines: 2,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFF81b632),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        tip4,
                        softWrap: true,
                        maxLines: 2,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
                const Flexible(
                  fit: FlexFit.tight,
                  child: SizedBox(
                    height: double.infinity,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
