import 'package:quizz_game/domain/entity/question.dart';

class Quizz {
  String title;
  List<Question<dynamic>> questions;
  int _currentQuestion = 0;
  int _correctAnswers = 0;
  int _wrongAnswers = 0;
  bool _end = false;

  Quizz({required this.title, required this.questions});

  bool validationAnswer(String answer, int question) {
    bool isCorrect = questions[question].answer == answer;
    if (!_end) {
      _currentQuestion++;
    }
    checkEnd();
    if (isCorrect) {
      _correctAnswers++;
      return true;
    } else {
      _wrongAnswers++;
      return false;
    }
  }

  void checkEnd() {
    if (_currentQuestion == questions.length - 1) {
      _end = true;
    }
  }

  set setIncrementWrong(int n) {
    checkEnd();
    if (_end) {
      _wrongAnswers++;
    } else {
      _currentQuestion++;
      _wrongAnswers++;
      checkEnd();
    }
  }

  int get getCorrectAnswers => _correctAnswers;

  int get getWrongAnswers => _wrongAnswers;

  int get getCurrentIndex => _currentQuestion;

  bool get getEnd => _end;


  void reset(){
    _currentQuestion = 0;
    _correctAnswers = 0;
    _wrongAnswers = 0;
    _end = false;
  }
}
