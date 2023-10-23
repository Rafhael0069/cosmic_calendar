import 'package:mobx/mobx.dart';
part 'months_controller.g.dart';

/*
Comandos para rodar o build
Gerar os arquivos -> dart run build_runner build
Salvar as alternates automaticamento nos arquivos -> dart run build_runner watch
Linpar os arquivos -> dart run build_runner clean
 */

class MonthsController = _MonthsController with _$MonthsController;

abstract class _MonthsController with Store {
  _MonthsController() {
    autorun((_) {
      currentMonthData = getCurrentMonthData();
    });
  }

  @observable
  int currentMonthIndex = 0;

  @observable
  Map<String, dynamic> currentMonthData = {};

  @observable

  List<Map<String, dynamic>> _calendar = [
    {
      "month": "Janeiro",
      "data": {
        "days": {
          {
            "day": "01",
            "data": {
              "hours": {
                {
                  "hour": "00:00:00",
                  "event": {
                    "title": "Big Bang",
                    "description": "O início do universo conhecido."}
                }
              }
            }
          }
        }
      }
    },
    {
      "month": "Fevereiro",
      "data": {
        "days": {
          {
            "day": "01",
            "data": {
              "hours": {
                {
                  "hour": "00:00:00",
                  "event": {
                    "title": "events cósmicos",
                    "description": "events cósmicos acontecendo."
                  }
                }
              }
            }
          },
          {
            "day": "15",
            "data": {
              "hours": {
                {
                  "hour": "12:00:00",
                  "event": {
                    "title": "Formação de Estrelas",
                    "description": "Nascimento de novas estrelas no cosmos."
                  }
                }
              }
            }
          },
        },
      }
    },
    {
      "month": "Março",
      "data": {
        "days": {
          {
            "day": "20",
            "data": {
              "hours": {
                {
                  "hour": "06:00:00",
                  "event": {
                    "title": "Formação da Via Láctea",
                    "description": "A Via Láctea, nossa galáxia, começa a se formar."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "month": "Abril",
      "data": {
        "days": {
          {
            "day": "10",
            "data": {
              "hours": {
                {
                  "hour": "10:30:00",
                  "event": {
                    "title": "Formação de Sistemas Solares",
                    "description": "Sistemas solares começam a se formar em nossa galáxia."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "month": "Maio",
      "data": {
        "days": {
          {
            "day": "04",
            "data": {
              "hours": {
                {
                  "hour": "14:15:00",
                  "event": {
                    "title": "Formação da Terra",
                    "description": "Nosso planeta, a Terra, começa a se formar."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "month": "Junho",
      "data": {
        "days": {
          {
            "day": "01",
            "data": {
              "hours": {
                {
                  "hour": "03:45:00",
                  "event": {
                    "title": "Origem da Vida",
                    "description": "A vida na Terra tem suas origens."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "month": "Julho",
      "data": {
        "days": {
          {
            "day": "20",
            "data": {
              "hours": {
                {
                  "hour": "12:00:00",
                  "event": {
                    "title": "Primeiros Organismos Multicelulares",
                    "description": "Os primeiros organismos multicelulares evoluem."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "month": "Agosto",
      "data": {
        "days": {
          {
            "day": "15",
            "data": {
              "hours": {
                {
                  "hour": "09:30:00",
                  "event": {
                    "title": "Era dos Dinossauros",
                    "description": "Os dinossauros dominam a Terra."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "month": "Setembro",
      "data": {
        "days": {
          {
            "day": "02",
            "data": {
              "hours": {
                {
                  "hour": "14:00:00",
                  "event": {
                    "title": "Extinção dos Dinossauros",
                    "description": "Os dinossauros são extintos por um event cataclísmico."
                  }
                }
              }
            }
          },
          {
            "day": "21",
            "data": {
              "hours": {
                {
                  "hour": "08:30:00",
                  "event": {
                    "title": "Aparição dos Humanos",
                    "description": "Os primeiros humanos modernos aparecem."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "month": "Outubro",
      "data": {
        "days": {
          {
            "day": "10",
            "data": {
              "hours": {
                {
                  "hour": "15:45:00",
                  "event": {
                    "title": "Desenvolvimento da Agricultura",
                    "description": "Os humanos começam a praticar a agricultura."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "month": "Novembro",
      "data": {
        "days": {
          {
            "day": "20",
            "data": {
              "hours": {
                {
                  "hour": "11:30:00",
                  "event": {
                    "title": "Revolução Industrial",
                    "description": "Início da Revolução Industrial."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "month": "Dezembro",
      "data": {
        "days": {
          {
            "day": "30",
            "data": {
              "hours": {
                {
                  "hour": "10:00:00",
                  "event": {
                    "title": "Era Espacial",
                    "description": "Início da exploração espacial."
                  }
                }
              }
            }
          },
          {
            "day": "31",
            "data": {
              "hours": {
                {
                  "hour": "23:59:50",
                  "event": {
                    "title": "Descoberta de Exoplanetas",
                    "description": "Primeiros exoplanetas são descobertos."
                  }
                },
                {
                  "hour": "23:59:58",
                  "event": {
                    "title": "Colonização de Marte",
                    "description": "Os humanos começam a colonizar Marte."
                  }
                },
                {
                  "hour": "23:59:59",
                  "event": {
                    "title": "Tempo Atual",
                    "description": "O tempo atual, representando o momento presente."
                  }
                },
              }
            }
          },
        },
      }
    },
  ];

  @action
  List<Map<String, dynamic>> getCalendar() {
    return _calendar;
  }

  @action
  Map<String, dynamic> getCurrentMonthData() {
    currentMonthData = _calendar[currentMonthIndex];
    return currentMonthData;
  }

  @action
  List getMonthsTitle() {
    List titles = [];
    for (var data in _calendar) {
      titles.add(data['month']);
    }
    return titles;
  }

  @action
  List getDays() {
    List days = [];
    var month = getCurrentMonthData();
    for (var day in month['data']['days']) {
      days.add(day);
    }
    return days;
  }

  @action
  List getHours(var day) {
    List hours = [];
    for (var hour in day['data']['hours']) {
      hours.add(hour);
    }
    return hours;
  }
}
