import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard({
    this.cardChild,
    this.onPress,
    super.key,
    required this.color,
  });

  final Color color;
  final Widget? cardChild;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
        margin: EdgeInsets.all(15),
        // // color: Color(0xFF1D1E33),
        // height: 200,
        // width: 170,
      ),
    );
  }
}
