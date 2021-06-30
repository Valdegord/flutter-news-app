part of 'news_bloc.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {  
  List<News>? news; 

  NewsInitial({@required this.news});

}
