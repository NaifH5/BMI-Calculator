import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String heightDDUnit = 'cm';
  String weightDDUnit = 'kg';

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Gender',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 200,
                        width: 150,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF494A4F),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                        height: 95,
                                        width: 95,
                                        child: SvgPicture.asset(
                                          "images/Female.svg",
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF494A4F),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                        height: 95,
                                        width: 95,
                                        child: SvgPicture.asset(
                                          "images/Male.svg",
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: SizedBox(
                      width: 10,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Age',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF494A4F),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                              child: Container(
                                height: 40,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFF6A6D72),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {},
                                    highlightColor: Color(0xFF494A4F),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Transform.rotate(
                                        angle: 0 * (3.14 / 180),
                                        child: SvgPicture.asset(
                                          "images/Triangle.svg",
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: double.infinity,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF81B632),
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: double.infinity,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                              child: Container(
                                height: 40,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFF6A6D72),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {},
                                    highlightColor: Color(0xFF494A4F),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Transform.rotate(
                                        angle: 180 * (3.14 / 180),
                                        child: SvgPicture.asset(
                                          "images/Triangle.svg",
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Your Height',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: SizedBox(
                      width: 20,
                    ),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: heightDDUnit,
                      icon: Transform.rotate(
                        angle: 180*(3.14/180),
                        child: SvgPicture.asset(
                          "images/Triangle.svg",
                          width: 7,
                          height: 7,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      style: TextStyle(
                        color: Color(0xFF6A6D72),
                      ),
                      onChanged: (String? newValue){
                        setState(() {
                          heightDDUnit = newValue!;
                        });
                      },
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'cm',
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('cm'),
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'm',
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('m'),
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'inch',
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('inch'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 110,
                decoration: BoxDecoration(
                  color: Color(0xFF494A4F),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                      child: Container(
                        height: double.infinity,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF6A6D72),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            highlightColor: Color(0xFF494A4F),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Transform.rotate(
                                angle: -90 * (3.14 / 180),
                                child: SvgPicture.asset(
                                  "images/Triangle.svg",
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: SizedBox(
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF81B632),
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: SizedBox(
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                      child: Container(
                        height: double.infinity,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF6A6D72),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            highlightColor: Color(0xFF494A4F),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Transform.rotate(
                                angle: 90 * (3.14 / 180),
                                child: SvgPicture.asset(
                                  "images/Triangle.svg",
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Your Weight',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: SizedBox(
                      width: 20,
                    ),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: weightDDUnit,
                      icon: Transform.rotate(
                        angle: 180*(3.14/180),
                        child: SvgPicture.asset(
                          "images/Triangle.svg",
                          width: 7,
                          height: 7,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      style: TextStyle(
                        color: Color(0xFF6A6D72),
                      ),
                      onChanged: (String? newValue){
                        setState(() {
                          weightDDUnit = newValue!;
                        });
                      },
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'kg',
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('kg'),
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'lb',
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('lb'),
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'st',
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('st'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 110,
                decoration: BoxDecoration(
                  color: Color(0xFF494A4F),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                      child: Container(
                        height: double.infinity,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF6A6D72),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            highlightColor: Color(0xFF494A4F),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Transform.rotate(
                                angle: -90 * (3.14 / 180),
                                child: SvgPicture.asset(
                                  "images/Triangle.svg",
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: SizedBox(
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF81B632),
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: SizedBox(
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                      child: Container(
                        height: double.infinity,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF6A6D72),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            highlightColor: Color(0xFF494A4F),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Transform.rotate(
                                angle: 90 * (3.14 / 180),
                                child: SvgPicture.asset(
                                  "images/Triangle.svg",
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                  color: Color(0xFF81B632),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                      onTap: () {},
                      highlightColor: Color(0xFF62892E),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
