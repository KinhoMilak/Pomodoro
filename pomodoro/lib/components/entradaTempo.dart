import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../store/pomodoroStore.dart';

class EntradaTempo extends StatelessWidget {
  final String title;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo({
    super.key,
    required this.valor,
    required this.title,
    this.dec,
    this.inc,
  });

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.title,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: this.dec,
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                backgroundColor:
                    store.estaTrabalahndo() ? Colors.red : Colors.green,
              ),
            ),
            Text(
              '${this.valor} min',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              onPressed: this.inc,
              child: Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                backgroundColor:
                    store.estaTrabalahndo() ? Colors.red : Colors.green,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
