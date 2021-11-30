import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vlnt_flutter/pages/dialog_incident_page.dart';
import 'package:vlnt_flutter/pages/profile_page.dart';
import 'package:vlnt_flutter/widgets/bars/bottombar.dart';
import 'package:vlnt_flutter/widgets/entity/incident.dart';
import 'package:vlnt_flutter/widgets/entity/news.dart';

class IncidentPage extends StatelessWidget {
  IncidentPage({Key? key}) : super(key: key);

  Dialog _dialog = Dialog();

  @override
  Widget build(BuildContext context) {
    _dialog = Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      elevation: 16,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.54,
        width: MediaQuery.of(context).size.height * 0.9,
        color: Colors.white,
        child: SingleChildScrollView(
            child: DialogIncidentPage(),
        ),
      ),
    );
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
                "ИНЦИДЕНТЫ",
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              height: MediaQuery.of(context).size.height * 0.66,
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return IncidentWidget(
                        name: "Инцидент",
                        category: "Другое",
                        fnd: "fnd",
                        source: "Человек",
                        description: "Описание инцидента",
                        imagesUri: ["https://avatars.mds.yandex.net/get-kinopoisk-post-img/1345014/95e44cfe0abaddb03e43181d31a9f788/960x540"],
                        locationQR: "assets/images/qrcode.png",
                        applicant: "Luke",
                        executor: "Vader",
                      );
                  }),
            ),
            BottomBar()
          ],
        )
      ),
      drawer: ProfilePage(),
      floatingActionButton: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.2),
          child: FloatingActionButton.extended(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => _dialog);
            },
            label: const Text('Добавить инцидент'),
            icon: const Icon(Icons.add),
            backgroundColor: Color.fromRGBO(118, 156, 144, 1),
          ),
      ),
    );
  }
}
