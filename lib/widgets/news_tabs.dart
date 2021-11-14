import 'package:flutter/material.dart';

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
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
        body: Builder(
          builder: (context) {
            _context = context;
            return TabBarView(
              controller: _tabController,
              children: myTabs.map((Tab tab) {
                final String label = tab.child.toString();
                return Center(
                  //TODO list news
                  child: Text(
                    'This is the $label tab',
                    style: const TextStyle(fontSize: 36),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
