import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:vlnt_flutter/entity/api/news.dart';
import 'package:vlnt_flutter/scopedmodels/news_model.dart';
import 'package:flutter_week_view/flutter_week_view.dart';

import '../entity/news.dart';

class WorkTabs extends StatefulWidget {
  const WorkTabs({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _WorkTabs();
}

class _WorkTabs extends State<WorkTabs> with SingleTickerProviderStateMixin {
  var _context;

  static String textPersonal = 'РАСПИСАНИЕ НА НЕДЕЛЮ';
  static String textAll = 'НА ДЕНЬ';
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
        // NewsModel().newsUser();
        }
      break;
      case 1:{
        // NewsModel().newsAll();
      }
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);
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
            builder: (BuildContext context, Widget inChild, NewsModel model) {
              return Builder(builder: (context) {
                _context = context;
                return TabBarView(
                  controller: _tabController,
                  children: myTabs.map((Tab tab) {
                    if (_tabController.index == 0) {
                      return WeekView(
                        dates: [date.subtract(Duration(days: 1)), date, date.add(Duration(days: 1))],
                        events: [
                          FlutterWeekViewEvent(
                            title: 'An event 1',
                            description: 'A description 1',
                            start: date.subtract(Duration(hours: 1)),
                            end: date.add(Duration(hours: 18, minutes: 30)),
                          ),
                          FlutterWeekViewEvent(
                            title: 'An event 2',
                            description: 'A description 2',
                            start: date.add(Duration(hours: 19)),
                            end: date.add(Duration(hours: 22)),
                          ),
                          FlutterWeekViewEvent(
                            title: 'An event 3',
                            description: 'A description 3',
                            start: date.add(Duration(hours: 23, minutes: 30)),
                            end: date.add(Duration(hours: 25, minutes: 30)),
                          ),
                          FlutterWeekViewEvent(
                            title: 'An event 4',
                            description: 'A description 4',
                            start: date.add(Duration(hours: 20)),
                            end: date.add(Duration(hours: 21)),
                          ),
                          FlutterWeekViewEvent(
                            title: 'An event 5',
                            description: 'A description 5',
                            start: date.add(Duration(hours: 20)),
                            end: date.add(Duration(hours: 21)),
                          ),
                        ],
                      );
                    } else {
                      return DayView(
                        date: now,
                        events: [
                          FlutterWeekViewEvent(
                            title: 'An event 1',
                            description: 'A description 1',
                            start: date.subtract(Duration(hours: 1)),
                            end: date.add(Duration(hours: 18, minutes: 30)),
                          ),
                          FlutterWeekViewEvent(
                            title: 'An event 2',
                            description: 'A description 2',
                            start: date.add(Duration(hours: 19)),
                            end: date.add(Duration(hours: 22)),
                          ),
                          FlutterWeekViewEvent(
                            title: 'An event 3',
                            description: 'A description 3',
                            start: date.add(Duration(hours: 23, minutes: 30)),
                            end: date.add(Duration(hours: 25, minutes: 30)),
                          ),
                          FlutterWeekViewEvent(
                            title: 'An event 4',
                            description: 'A description 4',
                            start: date.add(Duration(hours: 20)),
                            end: date.add(Duration(hours: 21)),
                          ),
                          FlutterWeekViewEvent(
                            title: 'An event 5',
                            description: 'A description 5',
                            start: date.add(Duration(hours: 20)),
                            end: date.add(Duration(hours: 21)),
                          ),
                        ],
                        style: DayViewStyle.fromDate(
                          date: now,
                          currentTimeCircleColor: Colors.pink,
                        ),
                      );

                    }
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
