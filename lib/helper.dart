import 'package:harry_potter_houses/question.dart';

class Helper {
  final List<Question> _questions = [
    Question(
      title:
          'Olá futuro bruxo(a)! Vamos descobrir qual é a casa ideal para você em Hogwarts? E a primeira questão é: com quais dos substantivos você se identifica mais?',
      choice1: 'Coragem e gentileza',
      choice2: 'Ambição e inteligência',
    ),
    Question(
      title:
          'Você prefere quebrar as regras e conquistar algo de forma rápida ou prefere utilizar a inteligência e estudar para então conquistar?',
      choice1: 'Prefiro quebrar as regras',
      choice2: 'Utilizo a inteligência e estudos',
    ),
    Question(
      title: 'O que se encaixa melhor com o seu perfil?',
      choice1: 'Ousadia e astúcia',
      choice2: 'Paciência e sinceridade',
    ),
    Question(
      title: 'Você ficará muito bem aos cuidados da SONSERINA',
      choice1: 'Refazer teste',
      choice2: '',
    ),
    Question(
      title: 'Você ficará muito bem aos cuidados da LUFA-LUFA!',
      choice1: 'Refazer teste',
      choice2: '',
    ),
    Question(
      title: 'Você ficará muito bem aos cuidados da GRIFINÓRIA!',
      choice1: 'Refazer teste',
      choice2: '',
    ),
    Question(
      title: 'Você ficará muito bem aos cuidados da CORVINAL!',
      choice1: 'Refazer teste',
      choice2: '',
    ),
  ];

  int _questionNumber = 0;

  Question _getQuestion() {
    return _questions[_questionNumber];
  }

  String getQuestionTitle() {
    return _getQuestion().title;
  }

  String getQuestionChoice1() {
    return _getQuestion().choice1;
  }

  String getQuestionChoice2() {
    return _getQuestion().choice2;
  }

  void nextQuestion({
    required int useChoice,
  }) {
    switch (_questionNumber) {
      case 0:
        if (useChoice == 1) {
          _questionNumber = 2;
        } else {
          _questionNumber = 1;
        }
        break;
      case 1:
        if (useChoice == 1) {
          _questionNumber = 3;
        } else {
          _questionNumber = 6;
        }
        break;
      case 2:
        if (useChoice == 1) {
          _questionNumber = 5;
        } else {
          _questionNumber = 4;
        }
        break;
      default:
        restart();
    }
  }

  void restart() {
    _questionNumber = 0;
  }

  bool buttonShouldBeVisible() {
    return _questionNumber <= 2;
  }
}
