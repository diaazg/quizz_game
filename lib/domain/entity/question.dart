
class Question<T>{
  String title;
  String answer ;
  Duration duration;
  List<T> _suggestions = [];


  Question({required this.title,required this.duration,required this.answer,required List<T> suggestions}){
    this.setSuggestions = suggestions ;
  }

  List<T> get getSuggestions => _suggestions;

  set setSuggestions (List<T> suggestions) {
    if (suggestions.length > 7) {
      _suggestions = suggestions;
    } else {
      throw ArgumentError('The suggestions list must contain more than 7 items.');
    }
  }

 shuffle(){
     this._suggestions.shuffle();
 }

}