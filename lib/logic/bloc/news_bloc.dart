import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/models/news.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsInitial(news: null));

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    
  }
}
