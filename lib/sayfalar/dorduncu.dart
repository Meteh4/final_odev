import 'package:flutter/material.dart';

import '../home_page.dart';




class Hakkinda extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0050AC),
        title: Text("Hakkinda"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[



            Text(" Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301027 numaralı Öğrenci Öğrenir tarafından 25 Haziran 2021 günü yapılmıştır. "),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(



                child: Text("Ana sayfaya dön"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}