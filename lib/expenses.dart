import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});
  @override
  State<Expense> createState() {
    return _Expense();
  }
}

class _Expense extends State<Expense> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.green,
            Colors.amber,
          ],
          begin: AlignmentDirectional.topStart,
          end: Alignment.bottomCenter,
        )),
        child: Container(
          width: double.infinity,
          height: 40,
          alignment: Alignment.topCenter,
          color: Colors.red,
          child: Text(
            'Expense',
            style: GoogleFonts.lobster(
              color: Colors.blue,
              fontSize: 24,
              shadows: [
                const Shadow(
                  blurRadius: 1.0,
                  color: Color.fromARGB(195, 0, 0, 0),
                  offset: Offset(1.0, 1.0),
                ),
              ],
            ),
          ),
        ));
  }
}
