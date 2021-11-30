import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:vlnt_flutter/entity/api/news.dart';
import 'package:vlnt_flutter/scopedmodels/news_model.dart';

import '../entity/news.dart';

class NewsTabs extends StatefulWidget {
  const NewsTabs({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NewsTabs();
}

class _NewsTabs extends State<NewsTabs> with SingleTickerProviderStateMixin {
  var _context;

  static String textPersonal = 'ПЕРСОНАЛЬНЫЕ';
  static String textAll = 'ОБЩИЕ';
  static Color tabColor = Color.fromRGBO(96, 167, 149, 1);
  static Color textColor = Color.fromRGBO(63, 59, 93, 1);

  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Text(
        textPersonal.toUpperCase(),
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
    Tab(
      child: Text(
        textAll.toUpperCase(),
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
    _tabController.addListener(_handleTabChange);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabChange() {
    switch(_tabController.index) {
      case 0:{
        NewsModel().newsUser();
        }
      break;
      case 1:{
        NewsModel().newsAll();
      }
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      child: Scaffold(
        appBar: TabBar(
          controller: _tabController,
          tabs: myTabs,
          unselectedLabelColor: textColor,
          labelColor: tabColor,
          indicatorColor: tabColor,
        ),
        body: ScopedModel(
          model: NewsModel(),
          child: ScopedModelDescendant<NewsModel>(
            builder: (BuildContext context, Widget? inChild, NewsModel model) {
              return Builder(builder: (context) {
                _context = context;
                return TabBarView(
                  controller: _tabController,
                  children: myTabs.map((Tab tab) {
                    return ListView.builder(
                        itemCount: model.isNewsLoad()
                            ? model.getNews().length
                            : 1,
                        itemBuilder: (context, index) {
                          if (model.isNewsLoad()) {
                            return NewsWidget(
                              title: model.getNews().elementAt(index).title ?? "sos",
                              description:
                              Description.fromJson(json.decode(model.getNews().elementAt(index).description.toString())).blocks![0].text ?? "sos",
                              date: model.getNews().elementAt(index).updatedAt ?? "sos",
                              imageUri: "http://dev.vlnt.expoforum.ru/api/static${model.getNews().elementAt(index).shortDescription}",
                            );
                          } else {
                            return Center (
                                child: Text("Новости отутствуют!")
                            );
                          }
                        });
                  }).toList(),
                );
              });
            },
          ),
        ),
      ),
    );
  }
}
