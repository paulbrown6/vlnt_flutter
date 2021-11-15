import 'package:scoped_model/scoped_model.dart';
import 'package:vlnt_flutter/entity/api/news.dart';
import 'package:vlnt_flutter/retrofit/api_request.dart';
import 'package:vlnt_flutter/viewmodels/impl/user_view_model_impl.dart';

class NewsModel extends Model{

  NewsModel._();
  static final NewsModel _newsModel = NewsModel._();

  factory NewsModel() {
    return _newsModel;
  }

  bool _load = false;
  static List<News> _news = [];
  int _page = 1;
  int _limit = 10;

  bool isNewsLoad(){
    return _load;
  }

  void setNewsLoad(bool isUser){
    _load = isUser;
    notifyListeners();
  }

  List<News> getNews(){
    return _news;
  }

  void setNews(List<News> news){
    _news.addAll(news);
    notifyListeners();
  }

  newsLoad(){
    ApiRequest().news(UserViewModelImpl().token, _page, _limit);
  }
}