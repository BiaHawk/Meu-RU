import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meuru/infra/constants.dart';
import 'package:meuru/usuario/ui/login.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();

}

class _CadastroState extends State<Cadastro>{

  //ui methods
  Widget _entryField(String text, {bool isPassword = false}) {
    return Container(
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(flex: 1,
            child: Text(
              text,
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500, fontSize: 15, color: lightGrey),
            ),
          ),
          Expanded(flex: 3,
              child: TextField(
                  obscureText: isPassword,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      fillColor: lightGrey,
                      contentPadding: EdgeInsets.all(15),
                      filled: true))
          )
        ],
      ),
    );
  }
  Widget _usernamePassword(){
    return Container(
      child: Column(
        children: <Widget>[
          _entryField('CPF:'),
          SizedBox(height: 10),
          _entryField('Senha:', isPassword: false),
          SizedBox(height: 10),
          _entryField('Confirme a sua senha:', isPassword: false)
        ],
      ),
    );
  }
  Widget _cadastroButton(){
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: mainPurple, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(5)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [lightSalmon, lightSalmon]
            )
        ),
        child: Text(
          'Cadastrar',
          style: GoogleFonts.roboto(fontSize: 20, color: mainPurple, fontWeight: FontWeight.w400),
        )
    );
  }
  Widget _loginAccountLink(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Já possui uma conta?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
          ),

          SizedBox(width: 5
          ),

          InkWell(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Text(
                'Entre agora',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
          ),

        ],
      ),
    );
  }
  //rewritten methods
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SingleChildScrollView(

            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration:  mainDecoration,

              child: Stack(
                children: <Widget>[

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 70),
                            child: Image.asset('assets/logo3.png')),

                        SizedBox(height: 20),

                        _usernamePassword(),

                        SizedBox(height: 10),

                        _cadastroButton(),

                        Align(
                          alignment: Alignment.bottomCenter,
                          child: _loginAccountLink(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}