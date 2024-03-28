import 'package:bmi_calculator/result_screen.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String heightDDUnit = 'cm';
  String weightDDUnit = 'kg';
  TextEditingController _ageController = TextEditingController(text: '0');
  TextEditingController _heightController = TextEditingController(text: '0');
  TextEditingController _weightController = TextEditingController(text: '0');
  TextEditingController _feetController = TextEditingController(text: '0');
  TextEditingController _inchController = TextEditingController(text: '0');
  int gender = 0;

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
                              child: InkWell(
                                onTap: () {
                                  gender = 1;
                                  setState(() {});
                                },
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
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
                                            color: gender == 1
                                                ? Color(0xFF81B632)
                                                : Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: InkWell(
                                onTap: () {
                                  gender = 2;
                                  setState(() {});
                                },
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
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
                                            color: gender == 2
                                                ? Color(0xFF81B632)
                                                : Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
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
                                    onTap: () {
                                      double age = double.tryParse(
                                              _ageController.text.trim()) ??
                                          -1;
                                      age = max(min(150, age + 1), 0);
                                      _ageController.text =
                                          age.toInt().toString();
                                      setState(() {});
                                    },
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
                                controller: _ageController,
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
                                    onTap: () {
                                      double age = double.tryParse(
                                              _ageController.text.trim()) ??
                                          -1;
                                      age = max(min(150, age - 1), 0);
                                      _ageController.text =
                                          age.toInt().toString();
                                      setState(() {});
                                    },
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
                        angle: 180 * (3.14 / 180),
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
                      onChanged: (String? newValue) {
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
                        DropdownMenuItem<String>(
                          value: 'feet',
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('feet'),
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
                            onTap: () {
                              if (heightDDUnit == 'feet') {
                                int feet =
                                    int.tryParse(_feetController.text.trim()) ??
                                        0;
                                int inch =
                                    int.tryParse(_inchController.text.trim()) ??
                                        0;
                                inch += feet * 12;
                                inch = max(min(150, inch - 1), 0);
                                feet = inch ~/ 12.0;
                                inch %= 12;
                                _feetController.text = feet.toString();
                                _inchController.text = inch.toString();
                              } else {
                                double height = double.tryParse(
                                        _heightController.text.trim()) ??
                                    -1;
                                height = max(min(300, height - 1), 0);
                                _heightController.text =
                                    height.toInt().toString();
                              }
                              setState(() {});
                            },
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
                    Visibility(
                      visible: heightDDUnit == 'feet' ? false : true,
                      child: SizedBox(
                        width: 160,
                        child: TextField(
                          controller: _heightController,
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
                    ),
                    Visibility(
                      visible: heightDDUnit == 'feet' ? true : false,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 70,
                            child: TextField(
                              controller: _feetController,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF81B632),
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                          Text(
                            '\'',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            width: 70,
                            child: TextField(
                              controller: _inchController,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF81B632),
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                          Text(
                            '\"',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
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
                            onTap: () {
                              if (heightDDUnit == 'feet') {
                                int feet =
                                    int.tryParse(_feetController.text.trim()) ??
                                        0;
                                int inch =
                                    int.tryParse(_inchController.text.trim()) ??
                                        0;
                                inch += feet * 12;
                                inch = max(min(150, inch + 1), 0);
                                feet = inch ~/ 12.0;
                                inch %= 12;
                                _feetController.text = feet.toString();
                                _inchController.text = inch.toString();
                              } else {
                                double height = double.tryParse(
                                        _heightController.text.trim()) ??
                                    -1;
                                height = max(min(300, height + 1), 0);
                                _heightController.text =
                                    height.toInt().toString();
                              }
                              setState(() {});
                            },
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
                        angle: 180 * (3.14 / 180),
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
                      onChanged: (String? newValue) {
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
                            onTap: () {
                              double weight = double.tryParse(
                                      _weightController.text.trim()) ??
                                  -1;
                              weight = max(min(700, weight - 1), 0);
                              _weightController.text =
                                  weight.toInt().toString();
                              setState(() {});
                            },
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
                        controller: _weightController,
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
                            onTap: () {
                              double weight = double.tryParse(
                                      _weightController.text.trim()) ??
                                  -1;
                              weight = max(min(700, weight + 1), 0);
                              _weightController.text =
                                  weight.toInt().toString();
                              setState(() {});
                            },
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
                      onTap: () {
                        double age =
                            double.tryParse(_ageController.text.trim()) ?? 0;
                        double height;
                        if (heightDDUnit == 'cm') {
                          height =
                              (double.tryParse(_heightController.text.trim()) ??
                                      0) /
                                  100;
                        } else if (heightDDUnit == 'inch') {
                          height =
                              (double.tryParse(_heightController.text.trim()) ??
                                      0) *
                                  0.0254;
                        } else if (heightDDUnit == 'feet') {
                          height =
                              ((double.tryParse(_feetController.text.trim()) ??
                                              0) *
                                          12 +
                                      (double.tryParse(
                                              _inchController.text.trim()) ??
                                          0)) *
                                  0.0254;
                        } else {
                          height =
                              double.tryParse(_heightController.text.trim()) ??
                                  0;
                        }
                        double weight;
                        if (weightDDUnit == 'lb') {
                          weight =
                              (double.tryParse(_weightController.text.trim()) ??
                                      0) *
                                  0.45359237;
                        } else if (weightDDUnit == 'st') {
                          weight =
                              (double.tryParse(_weightController.text.trim()) ??
                                      0) *
                                  6.35029;
                        } else {
                          weight =
                              double.tryParse(_weightController.text.trim()) ??
                                  0;
                        }
                        double bmi = double.parse((weight / (height * height)).toStringAsFixed(1));
                        heightDDUnit == 'feet'
                            ? height = (height / 0.0254) / 12
                            : height = (double.tryParse(
                                    _heightController.text.trim()) ??
                                0);
                        weight = double.tryParse(_weightController.text.trim()) ?? 0;
                        String status, range, tip1, tip2, tip3, tip4;
                        if(bmi<16){
                          status = 'Very Severely Underweight';
                          range = 'Less than 16';
                          tip1 = 'Prioritize nutrient-rich foods like nuts, seeds, and lean meats';
                          tip2 = 'Eat smaller, frequent meals to maintain a steady intake of calories.';
                          tip3 = 'Include strength training to build muscle mass and increase weight.';
                          tip4 = 'Consult a healthcare professional for personalized guidance and monitoring.';
                        }else if(bmi>=16 && bmi<17){
                          status = 'Severely Underweight';
                          range = '16.0 to 16.9';
                          tip1 = 'Increase calorie intake with nutrient-dense foods.';
                          tip2 = 'Focus on small, frequent meals for consistent energy.';
                          tip3 = 'Incorporate strength training to build muscle mass.';
                          tip4 = 'Seek professional guidance for personalized support.';
                        }else if(bmi>=17 && bmi<18.5){
                          status = 'Underweight';
                          range = '17.0 to 18.4';
                          tip1 = 'Include healthy fats like avocados and nuts.';
                          tip2 = 'Eat regular, balanced meals to maintain weight.';
                          tip3 = 'Incorporate strength exercises to build muscle.';
                          tip4 = 'Seek professional advice for personalized support.';
                        }else if(bmi>=18.5 && bmi<25){
                          status = 'Normal';
                          range = '18.5 to 24.9';
                          tip1 = 'Stay active with regular exercise routines.';
                          tip2 = 'Balance meals with a mix of nutrients.';
                          tip3 = 'Monitor weight and adjust diet and exercise as needed.';
                          tip4 = 'Prioritize whole foods over processed options.';
                        }else if(bmi>=25 && bmi<30){
                          status = 'Overweight';
                          range = '25.0 to 29.9';
                          tip1 = 'Focus on balanced meals with more vegetables and lean proteins.';
                          tip2 = 'Limit sugary and processed foods to manage calorie intake.';
                          tip3 = 'Engage in regular physical activity like brisk walking or cycling.';
                          tip4 = 'Monitor portion sizes and practice mindful eating habits.';
                        }else if(bmi>=30 && bmi<35){
                          status = 'Obese Class I';
                          range = '30.0 to 34.9';
                          tip1 = 'Focus on portion control and reduce intake of high-calorie foods.';
                          tip2 = 'Increase physical activity with regular exercise sessions.';
                          tip3 = 'Choose whole, unprocessed foods and limit sugary snacks.';
                          tip4 = 'Seek support from a healthcare provider or nutritionist for personalized advice.';
                        }
                        else if(bmi>=35 && bmi<40){
                          status = 'Obese Class II';
                          range = '35.0 to 39.9';
                          tip1 = 'Prioritize whole, unprocessed foods for balanced nutrition.';
                          tip2 = 'Aim for regular, moderate exercise to support weight management.';
                          tip3 = 'Seek professional guidance for personalized weight-loss strategies.';
                          tip4 = 'Monitor progress and adjust lifestyle habits accordingly.';
                        }else{
                          status = 'Obese Class III';
                          range = 'Greater than 39.9';
                          tip1 = 'Focus on portion control to manage calorie intake.';
                          tip2 = 'Increase physical activity gradually for better health.';
                          tip3 = 'Choose nutrient-dense foods to support weight loss.';
                          tip4 = 'Seek medical guidance for safe and sustainable strategies.';
                        }

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultScreen(
                              gender: gender,
                              age: age,
                              height: height,
                              heightUnit: heightDDUnit,
                              weight: weight,
                              weightUnit: weightDDUnit,
                              bmi: bmi,
                              status: status,
                              range: range,
                              tip1: tip1,
                              tip2: tip2,
                              tip3: tip3,
                              tip4: tip4,
                            ),
                          ),
                        );
                      },
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
