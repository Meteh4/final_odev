import 'package:flutter/material.dart';
import 'package:flutter_universe/home_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_universe/sayfalar/ucuncu.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String _isim;
  String _email;
  String _password;
  String GorusveFikirleriniz;
  String _phoneNumber;
  String _FavoriGezegen;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'İsim'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'İsim gereklidir';
        }

        return null;
      },
      onSaved: (String value) {
        _isim = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'E-Posta'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'E-Posta gereklidir';
        }

        if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Lütfen Geçerli bir E-Posta adresi giriniz';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Parola'),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Parola gereklidir';
        }

        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  Widget _builURL() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Görüş ve Düşünceleriniz'),
      keyboardType: TextInputType.url,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Bu kısımı doldurmanız gereklidir';
        }

        return null;
      },
      onSaved: (String value) {
        GorusveFikirleriniz = value;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Telefon Numarası'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Telefon numarası gereklidir';
        }

        return null;
      },
      onSaved: (String value) {
        GorusveFikirleriniz = value;
      },
    );
  }

  Widget _buildCalories() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Favori Gezegeniniz'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int calories = int.tryParse(value);

        if (calories == null || calories <= 0) {
          return 'Favori Gezegeninizi girmeniz gereklidir';
        }

        return null;
      },
      onSaved: (String value) {
        _FavoriGezegen = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF0050AC),
          title: Text("Form Doldurma Ekranı")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildName(),
                _buildEmail(),
                _buildPassword(),
                _builURL(),
                _buildPhoneNumber(),
                _buildCalories(),
                SizedBox(height: 100),
                RaisedButton(
                  child: Text(
                    'Gönder',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    print(_isim);
                    print(_email);
                    print(_phoneNumber);
                    print(GorusveFikirleriniz);
                    print(_password);
                    print(_FavoriGezegen);

                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


  Widget buildButton(BuildContext context) {
    return CurvedNavigationBar(

      backgroundColor: Colors.purple[20],
      items: <Widget>[
        IconButton(icon: const Icon(Icons.home), iconSize: 30, onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FormScreen())
          );
        },
        ),
        IconButton(icon: const Icon(Icons.text_fields), iconSize: 30, onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ucuncu())
          );
        },
        ),
        Icon(Icons.bar_chart, size: 30),
        Icon(Icons.info, size: 30),

      ],
      onTap: (Index) {},

    );
  }


