import 'package:mobx/mobx.dart';

part 'months_controller.g.dart';

/*
Comdandos para rodar o build
Gerar os arquivos -> dart run build_runner build
Salvar as alterações automaticamento nos arquivos -> dart run build_runner watch
Linpar os arquivos -> dart run build_runner clean
 */

class MonthsController = _MonthsController with _$MonthsController;

abstract class _MonthsController with Store {
  @observable
  ObservableMap months = ObservableMap<int, String>.of({
    01: "Janeiro",
    02: "Fevereiro",
    03: "Março",
    04: "Abril",
    05: "Maio",
    06: "Junho",
    07: "Julho",
    08: "Agosto",
    09: "Setembro",
    10: "Outubro",
    11: "Novenbro",
    12: "Dezembro"
  });
}
