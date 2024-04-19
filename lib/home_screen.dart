import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bmi_calculator/arrow_button.dart';
import 'Tips.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String heightDDUnit = 'cm';
  String weightDDUnit = 'kg';
  final TextEditingController _ageController = TextEditingController(text: '0');
  final TextEditingController _heightController =
      TextEditingController(text: '0');
  final TextEditingController _weightController =
      TextEditingController(text: '0');
  final TextEditingController _feetController =
      TextEditingController(text: '0');
  final TextEditingController _inchController =
      TextEditingController(text: '0');
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
                  fit: FlexFit.tight,
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Your Gender',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
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
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF494A4F),
                                          borderRadius:
                                              BorderRadius.circular(50),
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
                                              colorFilter: gender == 1
                                                  ? const ColorFilter.mode(
                                                      Color(0xFF81B632),
                                                      BlendMode.srcIn)
                                                  : const ColorFilter.mode(
                                                      Color(0xFFFFFFFF),
                                                      BlendMode.srcIn),
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
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF494A4F),
                                          borderRadius:
                                              BorderRadius.circular(50),
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
                                              colorFilter: gender == 2
                                                  ? const ColorFilter.mode(
                                                      Color(0xFF81B632),
                                                      BlendMode.srcIn)
                                                  : const ColorFilter.mode(
                                                      Color(0xFFFFFFFF),
                                                      BlendMode.srcIn),
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
                    const Flexible(
                      fit: FlexFit.tight,
                      child: SizedBox(
                        width: 10,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Your Age',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            color: const Color(0xFF494A4F),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 0),
                                child: ArrowButton(
                                  controller1: _ageController,
                                  buttonHeight: 40,
                                  buttonWidth: double.infinity,
                                  arrowAngle: 0,
                                  change: 1,
                                  maxValue: 150,
                                  type: 'Age',
                                ),
                              ),
                              const Flexible(
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  height: double.infinity,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: MediaQuery(
                                  data: MediaQuery.of(context).copyWith(
                                    textScaler: const TextScaler.linear(1.0),
                                  ),
                                  child: TextField(
                                    controller: _ageController,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    style: const TextStyle(
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF81B632),
                                    ),
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.all(0),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              const Flexible(
                                fit: FlexFit.tight,
                                child: SizedBox(
                                  height: double.infinity,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 15),
                                child: ArrowButton(
                                  controller1: _ageController,
                                  buttonHeight: 40,
                                  buttonWidth: double.infinity,
                                  arrowAngle: 180,
                                  change: -1,
                                  maxValue: 150,
                                  type: 'Age',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Flexible(
                  fit: FlexFit.loose,
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      'Your Height',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Flexible(
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
                            colorFilter: const ColorFilter.mode(
                                Color(0xFFFFFFFF), BlendMode.srcIn),
                          ),
                        ),
                        style: const TextStyle(
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
                    color: const Color(0xFF494A4F),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                        child: ArrowButton(
                          controller1: heightDDUnit == 'feet'
                              ? _feetController
                              : _heightController,
                          controller2: _inchController,
                          buttonHeight: double.infinity,
                          buttonWidth: 60,
                          arrowAngle: -90,
                          change: -1,
                          unit: heightDDUnit,
                          maxValue: 300,
                          type: 'Height',
                        ),
                      ),
                      const Flexible(
                        fit: FlexFit.tight,
                        child: SizedBox(
                          width: double.infinity,
                        ),
                      ),
                      Visibility(
                        visible: heightDDUnit == 'feet' ? false : true,
                        child: SizedBox(
                          width: 160,
                          child: MediaQuery(
                            data: MediaQuery.of(context).copyWith(
                              textScaler: const TextScaler.linear(1.0),
                            ),
                            child: TextField(
                              controller: _heightController,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                fontSize: 70,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF81B632),
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.zero,
                              ),
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
                                style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF81B632),
                                ),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.zero,
                                ),
                              ),
                            ),
                            const Text(
                              '\'',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 70,
                              child: TextField(
                                controller: _inchController,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF81B632),
                                ),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.zero,
                                ),
                              ),
                            ),
                            const Text(
                              '"',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Flexible(
                        fit: FlexFit.tight,
                        child: SizedBox(
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                        child: ArrowButton(
                          controller1: heightDDUnit == 'feet'
                              ? _feetController
                              : _heightController,
                          controller2: _inchController,
                          buttonHeight: double.infinity,
                          buttonWidth: 60,
                          arrowAngle: 90,
                          change: 1,
                          unit: heightDDUnit,
                          maxValue: 300,
                          type: 'Height',
                        ),
                      ),
                    ],
                  ),
                ),
                const Flexible(
                  fit: FlexFit.loose,
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      'Your Weight',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Flexible(
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
                            colorFilter: const ColorFilter.mode(
                                Color(0xFFFFFFFF), BlendMode.srcIn),
                          ),
                        ),
                        style: const TextStyle(
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
                    color: const Color(0xFF494A4F),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                        child: ArrowButton(
                            controller1: _weightController,
                            buttonHeight: double.infinity,
                            buttonWidth: 60,
                            arrowAngle: -90,
                            change: -1,
                            maxValue: 700,
                            type: 'Weight'),
                      ),
                      const Flexible(
                        fit: FlexFit.tight,
                        child: SizedBox(
                          width: double.infinity,
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        child: MediaQuery(
                          data: MediaQuery.of(context).copyWith(
                            textScaler: const TextScaler.linear(1),
                          ),
                          child: TextField(
                            controller: _weightController,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF81B632),
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ),
                      const Flexible(
                        fit: FlexFit.tight,
                        child: SizedBox(
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                        child: ArrowButton(
                            controller1: _weightController,
                            buttonHeight: double.infinity,
                            buttonWidth: 60,
                            arrowAngle: 90,
                            change: 1,
                            maxValue: 700,
                            type: 'Weight'),
                      ),
                    ],
                  ),
                ),
                const Flexible(
                  fit: FlexFit.tight,
                  child: SizedBox(
                    height: double.infinity,
                  ),
                ),
                Container(
                  height: 45,
                  width: 250,
                  decoration: BoxDecoration(
                    color: const Color(0xFF81B632),
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
                            height = (double.tryParse(
                                        _heightController.text.trim()) ??
                                    0) /
                                100;
                          } else if (heightDDUnit == 'inch') {
                            height = (double.tryParse(
                                        _heightController.text.trim()) ??
                                    0) *
                                0.0254;
                          } else if (heightDDUnit == 'feet') {
                            height = ((double.tryParse(
                                                _feetController.text.trim()) ??
                                            0) *
                                        12 +
                                    (double.tryParse(
                                            _inchController.text.trim()) ??
                                        0)) *
                                0.0254;
                          } else {
                            height = double.tryParse(
                                    _heightController.text.trim()) ??
                                0;
                          }
                          double weight;
                          if (weightDDUnit == 'lb') {
                            weight = (double.tryParse(
                                        _weightController.text.trim()) ??
                                    0) *
                                0.45359237;
                          } else if (weightDDUnit == 'st') {
                            weight = (double.tryParse(
                                        _weightController.text.trim()) ??
                                    0) *
                                6.35029;
                          } else {
                            weight = double.tryParse(
                                    _weightController.text.trim()) ??
                                0;
                          }
                          double bmi = double.parse(
                              (weight / (height * height)).toStringAsFixed(1));
                          heightDDUnit == 'feet'
                              ? height = (height / 0.0254) / 12
                              : height = (double.tryParse(
                                      _heightController.text.trim()) ??
                                  0);
                          weight =
                              double.tryParse(_weightController.text.trim()) ??
                                  0;

                          Tips tips = Tips(
                            bmi: bmi,
                          );

                          if (gender == 0) {
                            const snackBar = SnackBar(
                              content: Text('Select a gender'),
                              duration: Duration(seconds: 1),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else if (age < 1 || age > 150) {
                            const snackBar = SnackBar(
                              content: Text('Invalid age'),
                              duration: Duration(seconds: 1),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else if (height < 1 || height > 300) {
                            const snackBar = SnackBar(
                              content: Text('Invalid height'),
                              duration: Duration(seconds: 1),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else if (weight < 1 || weight > 700) {
                            const snackBar = SnackBar(
                              content: Text('Invalid weight'),
                              duration: Duration(seconds: 1),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else {
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
                                  status: tips.status,
                                  range: tips.range,
                                  tip1: tips.tip1,
                                  tip2: tips.tip2,
                                  tip3: tips.tip3,
                                  tip4: tips.tip4,
                                ),
                              ),
                            );
                          }
                        },
                        highlightColor: const Color(0xFF62892E),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            'Calculate',
                            textScaler: TextScaler.linear(1.0),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        )),
                  ),
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
