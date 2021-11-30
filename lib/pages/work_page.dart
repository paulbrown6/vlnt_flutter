import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vlnt_flutter/pages/profile_page.dart';
import 'package:vlnt_flutter/widgets/bars/bottombar.dart';
import 'package:vlnt_flutter/widgets/tabs/news_tabs.dart';
import 'package:vlnt_flutter/widgets/tabs/work_tabs.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.zero,
              width: MediaQuery.of(context).size.width * 0.74,
              alignment: Alignment.center,
              child: Text(
                "РАБОТА",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: GoogleFonts.romanesco().fontFamily),
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
                size: 32,
              ),
            )
          ],
        ),
        backgroundColor: Color.fromRGBO(63, 59, 93, 1),
        toolbarHeight: MediaQuery.of(context).size.height * 0.08,
      ),
      backgroundColor: Color.fromRGBO(236, 246, 243, 1),
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.66,
              child: WorkTabs(),
            ),
            BottomBar()
          ],
        )
      ),
      drawer: ProfilePage(),
    );
  }
}
