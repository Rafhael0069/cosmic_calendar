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
  _MonthsController() {
    autorun((_) {
      currentMonthData = getCurrentMonthData();
    });

    // reaction((_) => currentMonthIndex, (_) {
    //   currentMonthData = getCurrentMonthData();
    // });
  }

  // @observable
  // ObservableMap months = ObservableMap<int, String>.of({
  //   01: "Janeiro",
  //   02: "Fevereiro",
  //   03: "Março",
  //   04: "Abril",
  //   05: "Maio",
  //   06: "Junho",
  //   07: "Julho",
  //   08: "Agosto",
  //   09: "Setembro",
  //   10: "Outubro",
  //   11: "Novenbro",
  //   12: "Dezembro"
  // });

  // @observable
  // Map<String, dynamic> calendar = {
  //   "BigBang": {
  //     "evento": "Big Bang",
  //     "data": "1 de janeiro, 00:00:00",
  //     "descrição": "O início do universo conhecido."
  //   },
  //   "Formação da Via Láctea": {
  //     "evento": "Formação da Via Láctea",
  //     "data": "30 de março",
  //     "descrição": "A Via Láctea, nossa galáxia, começa a se formar."
  //   },
  //   "Formação da Terra": {
  //     "evento": "Formação da Terra",
  //     "data": "2 de setembro",
  //     "descrição": "Nosso planeta, a Terra, começa a se formar."
  //   },
  //   "Origem da Vida": {
  //     "evento": "Origem da Vida",
  //     "data": "21 de setembro",
  //     "descrição": "A vida na Terra tem suas origens."
  //   },
  //   "Era dos Dinossauros": {
  //     "evento": "Era dos Dinossauros",
  //     "data": "30 de dezembro",
  //     "descrição": "Os dinossauros dominam a Terra."
  //   },
  //   "Extinção dos Dinossauros": {
  //     "evento": "Extinção dos Dinossauros",
  //     "data": "31 de dezembro, 23:59:50",
  //     "descrição": "Os dinossauros são extintos por um evento cataclísmico."
  //   },
  //   "Aparição dos Humanos": {
  //     "evento": "Aparição dos Humanos",
  //     "data": "31 de dezembro, 23:59:58",
  //     "descrição": "Os primeiros humanos modernos aparecem."
  //   },
  //   "Tempo Atual": {
  //     "evento": "Tempo Atual",
  //     "data": "31 de dezembro, 23:59:59",
  //     "descrição": "O tempo atual, representando o momento presente."
  //   }
  // };

  @observable
  int currentMonthIndex = 0;

  @observable
  Map<String, dynamic> currentMonthData = {};

  @observable
  // List<Map<String, dynamic>> _calendar = [
  //   {
  //     "mes": "Janeiro",
  //     "dados": {
  //       "dia": "1",
  //       "dados": {
  //         "hora": "00:00:00",
  //         "evento": {"titulo": "Big Bang", "descricao": "O início do universo conhecido."}
  //       }
  //     }
  //   },
  //   {
  //     "mes": "Março",
  //     "dados": {
  //       "dia": "30",
  //       "dados": {
  //         "hora": null,
  //         "evento": {
  //           "titulo": "Formação da Via Láctea",
  //           "descricao": "A Via Láctea, nossa galáxia, começa a se formar."
  //         }
  //       }
  //     }
  //   },
  //   {
  //     "mes": "Setembro",
  //     "dados": {
  //       "dia": "02",
  //       "dados": {
  //         "hora": null,
  //         "evento": {
  //           "titulo": "Formação da Terra",
  //           "descricao": "Nosso planeta, a Terra, começa a se formar."
  //         }
  //       }
  //     }
  //   },
  //   {
  //     "mes": "Setembro",
  //     "dados": {
  //       "dia": "21",
  //       "dados": {
  //         "hora": null,
  //         "evento": {"titulo": "Origem da Vida", "descricao": "A vida na Terra tem suas origens."}
  //       }
  //     }
  //   },
  //   {
  //     "mes": "Desembro",
  //     "dados": {
  //       "dia": "30",
  //       "dados": {
  //         "hora": null,
  //         "evento": {
  //           "titulo": "Era dos Dinossauros",
  //           "descricao": "Os dinossauros dominam a Terra."
  //         }
  //       }
  //     }
  //   },
  //   {
  //     "mes": "Desembro",
  //     "dados": {
  //       "dia": "31",
  //       "dados": {
  //         "hora": "23:59:50",
  //         "evento": {
  //           "titulo": "Extinção dos Dinossauros",
  //           "descricao": "Os dinossauros são extintos por um evento cataclísmico."
  //         }
  //       }
  //     }
  //   },
  //   {
  //     "mes": "Desembro",
  //     "dados": {
  //       "dia": "31",
  //       "dados": {
  //         "hora": "23:59:58",
  //         "evento": {
  //           "titulo": "Aparição dos Humanos",
  //           "descricao": "Os primeiros humanos modernos aparecem."
  //         }
  //       }
  //     }
  //   },
  //   {
  //     "mes": "Desembro",
  //     "dados": {
  //       "dia": "31",
  //       "dados": {
  //         "hora": "23:59:59",
  //         "evento": {
  //           "titulo": "Tempo Atual",
  //           "descricao": "O tempo atual, representando o momento presente."
  //         }
  //       }
  //     }
  //   },
  // ];
  List<Map<String, dynamic>> _calendar = [
    {
      "mes": "Janeiro",
      "dados": {
        "dias": {
          {
            "dia": "01",
            "dados": {
              "horas": {
                {
                  "hora": "00:00:00",
                  "evento": {"titulo": "Big Bang", "descricao": "O início do universo conhecido."}
                }
              }
            }
          }
        }
      }
    },
    {
      "mes": "Fevereiro",
      "dados": {
        "dias": {
          {
            "dia": "01",
            "dados": {
              "horas": {
                {
                  "hora": "00:00:00",
                  "evento": {
                    "titulo": "Eventos cósmicos",
                    "descricao": "Eventos cósmicos acontecendo."
                  }
                }
              }
            }
          },
          {
            "dia": "15",
            "dados": {
              "horas": {
                {
                  "hora": "12:00:00",
                  "evento": {
                    "titulo": "Formação de Estrelas",
                    "descricao": "Nascimento de novas estrelas no cosmos."
                  }
                }
              }
            }
          },
        },
      }
    },
    {
      "mes": "Março",
      "dados": {
        "dias": {
          {
            "dia": "20",
            "dados": {
              "horas": {
                {
                  "hora": "06:00:00",
                  "evento": {
                    "titulo": "Formação da Via Láctea",
                    "descricao": "A Via Láctea, nossa galáxia, começa a se formar."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "mes": "Abril",
      "dados": {
        "dias": {
          {
            "dia": "10",
            "dados": {
              "horas": {
                {
                  "hora": "10:30:00",
                  "evento": {
                    "titulo": "Formação de Sistemas Solares",
                    "descricao": "Sistemas solares começam a se formar em nossa galáxia."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "mes": "Maio",
      "dados": {
        "dias": {
          {
            "dia": "04",
            "dados": {
              "horas": {
                {
                  "hora": "14:15:00",
                  "evento": {
                    "titulo": "Formação da Terra",
                    "descricao": "Nosso planeta, a Terra, começa a se formar."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "mes": "Junho",
      "dados": {
        "dias": {
          {
            "dia": "01",
            "dados": {
              "horas": {
                {
                  "hora": "03:45:00",
                  "evento": {
                    "titulo": "Origem da Vida",
                    "descricao": "A vida na Terra tem suas origens."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "mes": "Julho",
      "dados": {
        "dias": {
          {
            "dia": "20",
            "dados": {
              "horas": {
                {
                  "hora": "12:00:00",
                  "evento": {
                    "titulo": "Primeiros Organismos Multicelulares",
                    "descricao": "Os primeiros organismos multicelulares evoluem."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "mes": "Agosto",
      "dados": {
        "dias": {
          {
            "dia": "15",
            "dados": {
              "horas": {
                {
                  "hora": "09:30:00",
                  "evento": {
                    "titulo": "Era dos Dinossauros",
                    "descricao": "Os dinossauros dominam a Terra."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "mes": "Setembro",
      "dados": {
        "dias": {
          {
            "dia": "02",
            "dados": {
              "horas": {
                {
                  "hora": "14:00:00",
                  "evento": {
                    "titulo": "Extinção dos Dinossauros",
                    "descricao": "Os dinossauros são extintos por um evento cataclísmico."
                  }
                }
              }
            }
          },
          {
            "dia": "21",
            "dados": {
              "horas": {
                {
                  "hora": "08:30:00",
                  "evento": {
                    "titulo": "Aparição dos Humanos",
                    "descricao": "Os primeiros humanos modernos aparecem."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "mes": "Outubro",
      "dados": {
        "dias": {
          {
            "dia": "10",
            "dados": {
              "horas": {
                {
                  "hora": "15:45:00",
                  "evento": {
                    "titulo": "Desenvolvimento da Agricultura",
                    "descricao": "Os humanos começam a praticar a agricultura."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "mes": "Novembro",
      "dados": {
        "dias": {
          {
            "dia": "20",
            "dados": {
              "horas": {
                {
                  "hora": "11:30:00",
                  "evento": {
                    "titulo": "Revolução Industrial",
                    "descricao": "Início da Revolução Industrial."
                  }
                }
              }
            }
          }
        },
      }
    },
    {
      "mes": "Dezembro",
      "dados": {
        "dias": {
          {
            "dia": "30",
            "dados": {
              "horas": {
                {
                  "hora": "10:00:00",
                  "evento": {
                    "titulo": "Era Espacial",
                    "descricao": "Início da exploração espacial."
                  }
                }
              }
            }
          },
          {
            "dia": "31",
            "dados": {
              "horas": {
                {
                  "hora": "23:59:50",
                  "evento": {
                    "titulo": "Descoberta de Exoplanetas",
                    "descricao": "Primeiros exoplanetas são descobertos."
                  }
                },
                {
                  "hora": "23:59:58",
                  "evento": {
                    "titulo": "Colonização de Marte",
                    "descricao": "Os humanos começam a colonizar Marte."
                  }
                },
                {
                  "hora": "23:59:59",
                  "evento": {
                    "titulo": "Tempo Atual",
                    "descricao": "O tempo atual, representando o momento presente."
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
      titles.add(data['mes']);
    }
    return titles;
  }

  @action
  List getDias() {
    List dias = [];
    var mes = getCurrentMonthData();
    for (var dia in mes['dados']['dias']) {
      dias.add(dia);
    }
    return dias;
  }

  @action
  List getHoras(var dia) {
    List horas = [];
    for (var hora in dia['dados']['horas']) {
      horas.add(hora);
    }
    return horas;
  }
}
