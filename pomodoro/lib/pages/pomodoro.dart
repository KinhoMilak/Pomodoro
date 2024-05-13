import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro.dart';
import 'package:pomodoro/components/entradaTempo.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../store/pomodoroStore.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Cronometro()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EntradaTempo(
                    valor: store.tempoTrabalho,
                    title: 'Trabalho',
                    inc: store.iniciado && store.estaTrabalahndo()
                        ? null
                        : store.incrementarTempoTrabalho,
                    dec: store.iniciado && store.estaTrabalahndo()
                        ? null
                        : store.decrementarTempoTrabalho,
                  ),
                  EntradaTempo(
                    valor: store.tempoDescanco,
                    title: 'Descanço',
                    inc: store.iniciado && store.estaDescancando()
                        ? null
                        : store.incrementarTempoDescamco,
                    dec: store.iniciado && store.estaDescancando()
                        ? null
                        : store.decrementarTempoDescanco,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
