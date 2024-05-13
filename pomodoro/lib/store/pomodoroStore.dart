import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoroStore.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum TipoIntevalo { trabalho, descanso }

abstract class _PomodoroStore with Store {
  @observable
  bool iniciado = false;

  @observable
  int minutos = 2;

  @observable
  int segundos = 0;

  @observable
  int tempoTrabalho = 2;

  @observable
  int tempoDescanco = 1;

  @observable
  TipoIntevalo tipoIntevalo = TipoIntevalo.descanso;

  @action
  void iniciar() {
    iniciado = true;
    cronometro = Timer.periodic(Duration(seconds: 1), (timer) {
      if (minutos == 0 && segundos == 0) {
        _trocarTipoIntervalo();
      } else if (segundos == 0) {
        segundos = 59;
        minutos--;
      } else {
        segundos--;
      }
    });
  }

  @action
  void parar() {
    iniciado = false;
    cronometro?.cancel();
  }

  @action
  void reiniciar() {
    iniciado = false;
    parar();
    if (estaTrabalahndo()) {
      minutos = tempoTrabalho;
    } else {
      minutos = tempoDescanco;
    }
    segundos = 0;
  }

  @action
  void incrementarTempoTrabalho() {
    tempoTrabalho++;
    if (estaTrabalahndo()) {
      reiniciar();
    }
  }

  @action
  void incrementarTempoDescamco() {
    tempoDescanco++;
    if (estaDescancando()) {
      reiniciar();
    }
  }

  @action
  void decrementarTempoTrabalho() {
    if (tempoTrabalho > 1) {
      tempoTrabalho--;

      if (estaTrabalahndo()) {
        reiniciar();
      }
    }
  }

  @action
  void decrementarTempoDescanco() {
    if (tempoDescanco > 1) {
      tempoDescanco--;
      if (estaDescancando()) {
        reiniciar();
      }
    }
  }

  Timer? cronometro;

  bool estaTrabalahndo() {
    return tipoIntevalo == TipoIntevalo.trabalho;
  }

  bool estaDescancando() {
    return tipoIntevalo == TipoIntevalo.descanso;
  }

  void _trocarTipoIntervalo() {
    if (estaTrabalahndo()) {
      tipoIntevalo = TipoIntevalo.descanso;
      minutos = tempoDescanco;
    } else {
      tipoIntevalo = TipoIntevalo.trabalho;
      minutos = tempoTrabalho;
    }
    segundos = 0;
  }
}
