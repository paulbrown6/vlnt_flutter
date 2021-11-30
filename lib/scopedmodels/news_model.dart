import 'package:scoped_model/scoped_model.dart';
import 'package:vlnt_flutter/entity/api/news.dart';
import 'package:vlnt_flutter/retrofit/api_request.dart';
import 'package:vlnt_flutter/viewmodels/impl/user_view_model_impl.dart';

class NewsModel extends Model{

  NewsModel._();
  static final NewsModel _newsModel = NewsModel._();

  UserViewModelImpl _userModel = UserViewModelImpl();

  factory NewsModel() {
    return _newsModel;
  }

  bool _load = false;
  static List<News> _news = [];

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
    _news.clear();
    _news.addAll(news);
    notifyListeners();
  }

  newsAll(){
    ApiRequest().news(UserViewModelImpl().token, 1, 999, 0, 0, 0);
  }

  newsUser(){
    ApiRequest().news(UserViewModelImpl().token, 1, 999, _userModel.user!.application![0].area!.id!, _userModel.user!.application![0].team!.id!, _userModel.user!.application![0].block!.id!);
  }
}