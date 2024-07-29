import 'package:quizz_game/domain/entity/Question.dart';

class Quizz{
  
  String title ;
  List<Question> questions;
  int _currentQuestion = 1 ;
  int _correctAnswers = 0;
  int _wrongAnswers = 0 ;
  bool _end = false ;

  Quizz({required this.title, required this.questions});


  bool validationAnswer(String answer , int question){

  bool isCorrect = questions[question].answer == answer;
    _currentQuestion++;
     checkEnd();
    if(isCorrect){
        _correctAnswers++;
        return true;
    }else{
      _wrongAnswers++;
      return false;
    }
  }
  
  void checkEnd(){
       
    if(_currentQuestion==questions.length){
      _end=true;
    }

  }
  
  
  set setIncrementWrong(int previousWrong){
    checkEnd();
    _wrongAnswers = previousWrong++ ;
  }
  

  

  int get getCorrectAnswers => _correctAnswers;

  int get getWrongAnswers => _wrongAnswers;

  bool get getEnd => _end;


}