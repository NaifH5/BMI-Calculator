import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';

class ArrowButton extends StatefulWidget {
  const ArrowButton(
      {super.key,
      required this.controller1,
      this.controller2,
      required this.type,
      required this.maxValue,
      required this.buttonHeight,
      required this.buttonWidth,
      required this.arrowAngle,
      required this.change,
      this.unit});

  final TextEditingController controller1;
  final TextEditingController? controller2;
  final double buttonHeight;
  final double buttonWidth;
  final double arrowAngle;
  final int change;
  final String? unit;
  final String type;
  final double maxValue;

  @override
  State<ArrowButton> createState() => _ArrowButtonState();
}

class _ArrowButtonState extends State<ArrowButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.buttonHeight,
      width: widget.buttonWidth,
      decoration: BoxDecoration(
        color: const Color(0xFF6A6D72),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            if (widget.unit == 'feet' && widget.type == 'Height') {
              int feet = int.tryParse(widget.controller1.text.trim()) ?? 0;
              int inch = int.tryParse(widget.controller2!.text.trim()) ?? 0;
              inch += feet * 12;
              inch = max(min(150, inch + widget.change), 0);
              feet = inch ~/ 12.0;
              inch %= 12;
              widget.controller1.text = feet.toString();
              widget.controller2?.text = inch.toString();
            } else {
              double value =
                  double.tryParse(widget.controller1.text.trim()) ?? -1;
              value = max(min(widget.maxValue, value + widget.change), 0);
              widget.controller1.text = value.toInt().toString();
            }
            setState(() {});
          },
          highlightColor: const Color(0xFF494A4F),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Transform.rotate(
              angle: widget.arrowAngle * (3.14 / 180),
              child: SvgPicture.asset(
                "images/Triangle.svg",
                colorFilter:
                    const ColorFilter.mode(Color(0xFFFFFFFF), BlendMode.srcIn),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
