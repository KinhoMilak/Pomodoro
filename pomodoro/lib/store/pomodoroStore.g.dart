// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoroStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  late final _$iniciadoAtom =
      Atom(name: '_PomodoroStore.iniciado', context: context);

  @override
  bool get iniciado {
    _$iniciadoAtom.reportRead();
    return super.iniciado;
  }

  @override
  set iniciado(bool value) {
    _$iniciadoAtom.reportWrite(value, super.iniciado, () {
      super.iniciado = value;
    });
  }

  late final _$minutosAtom =
      Atom(name: '_PomodoroStore.minutos', context: context);

  @override
  int get minutos {
    _$minutosAtom.reportRead();
    return super.minutos;
  }

  @override
  set minutos(int value) {
    _$minutosAtom.reportWrite(value, super.minutos, () {
      super.minutos = value;
    });
  }

  late final _$segundosAtom =
      Atom(name: '_PomodoroStore.segundos', context: context);

  @override
  int get segundos {
    _$segundosAtom.reportRead();
    return super.segundos;
  }

  @override
  set segundos(int value) {
    _$segundosAtom.reportWrite(value, super.segundos, () {
      super.segundos = value;
    });
  }

  late final _$tempoTrabalhoAtom =
      Atom(name: '_PomodoroStore.tempoTrabalho', context: context);

  @override
  int get tempoTrabalho {
    _$tempoTrabalhoAtom.reportRead();
    return super.tempoTrabalho;
  }

  @override
  set tempoTrabalho(int value) {
    _$tempoTrabalhoAtom.reportWrite(value, super.tempoTrabalho, () {
      super.tempoTrabalho = value;
    });
  }

  late final _$tempoDescancoAtom =
      Atom(name: '_PomodoroStore.tempoDescanco', context: context);

  @override
  int get tempoDescanco {
    _$tempoDescancoAtom.reportRead();
    return super.tempoDescanco;
  }

  @override
  set tempoDescanco(int value) {
    _$tempoDescancoAtom.reportWrite(value, super.tempoDescanco, () {
      super.tempoDescanco = value;
    });
  }

  late final _$tipoIntevaloAtom =
      Atom(name: '_PomodoroStore.tipoIntevalo', context: context);

  @override
  TipoIntevalo get tipoIntevalo {
    _$tipoIntevaloAtom.reportRead();
    return super.tipoIntevalo;
  }

  @override
  set tipoIntevalo(TipoIntevalo value) {
    _$tipoIntevaloAtom.reportWrite(value, super.tipoIntevalo, () {
      super.tipoIntevalo = value;
    });
  }

  late final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore', context: context);

  @override
  void iniciar() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.iniciar');
    try {
      return super.iniciar();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void parar() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.parar');
    try {
      return super.parar();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reiniciar() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.reiniciar');
    try {
      return super.reiniciar();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementarTempoTrabalho() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementarTempoTrabalho');
    try {
      return super.incrementarTempoTrabalho();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementarTempoDescamco() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementarTempoDescamco');
    try {
      return super.incrementarTempoDescamco();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementarTempoTrabalho() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementarTempoTrabalho');
    try {
      return super.decrementarTempoTrabalho();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementarTempoDescanco() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementarTempoDescanco');
    try {
      return super.decrementarTempoDescanco();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
iniciado: ${iniciado},
minutos: ${minutos},
segundos: ${segundos},
tempoTrabalho: ${tempoTrabalho},
tempoDescanco: ${tempoDescanco},
tipoIntevalo: ${tipoIntevalo}
    ''';
  }
}
