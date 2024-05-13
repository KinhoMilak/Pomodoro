import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  void Function()? click;

  CronometroBotao({
    super.key,
    required this.texto,
    required this.icone,
    this.click,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          textStyle: TextStyle(fontSize: 25, color: Colors.white)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icone,
              size: 35,
              color: Colors.white,
            ),
          ),
          Text(
            texto,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      onPressed: click,
    );
  }
}
