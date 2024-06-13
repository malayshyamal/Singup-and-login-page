
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

Color textFieldColor = Colors.orange;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: auth());
  }
}

class auth extends StatelessWidget {
  const auth({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: screenheight/2,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.orangeAccent, Colors.deepOrange],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50))),
        ),
        Positioned(
          top: screenheight/8,
          width: screenwidth,
          child: Center(
            child: Text(
              "Demo*",
              style: GoogleFonts.caveat(
                  color: Colors.white, letterSpacing: 1, fontSize: 50),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: LayoutBuilder(
            builder: (context, constraints) {
              double width =
                  constraints.maxWidth < 600 ? constraints.maxWidth * 0.8 : 400;
              return Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                width: width,
                padding: EdgeInsets.all(16.9),
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TabBar(
                          indicatorColor: textFieldColor,
                          labelColor: textFieldColor,
                          unselectedLabelColor: Colors.grey,
                          labelStyle: TextStyle(fontSize: 18),
                          tabs: [
                            Tab(
                              text: 'Login',
                            ),
                            Tab(
                              text: 'Signup',
                            )
                          ]),
                      Container(
                        height: 300,
                        child: TabBarView(
                          children: [LoginTab(), SignUp()],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
            bottom: screenheight / 4,
            left: screenwidth / 2.2,
            child: FloatingActionButton(
              shape: CircleBorder(),
              onPressed: () {},
                backgroundColor: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.orangeAccent, Colors.deepOrange],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(50)
                ),
                height: 45,width: 45,
                child: Icon(
                  Icons.arrow_forward,size: 35,
                  color: Colors.white,
                ),
              )
            ),),

        Positioned(
            bottom: 50,
            width: screenwidth,
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.facebook,
                        size: 20,
                        color: Colors.orangeAccent,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person,
                          size: 20, color: Colors.orangeAccent)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.mail,
                          size: 20, color: Colors.orangeAccent))
                ],
              ),
            )),
      ],
    ));
  }
}

class LoginTab extends StatelessWidget {
  LoginTab({super.key});
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: username,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: textFieldColor)),
                prefixIcon: Icon(
                  Icons.person,size: 20,
                  color: textFieldColor,
                ),
                labelStyle: TextStyle(color: textFieldColor),
                labelText: 'username'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: password,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: textFieldColor)),
                labelText: 'password',
                prefixIcon: (Icon(
                  Icons.lock,size: 20,
                  color: textFieldColor,
                )),
                labelStyle: TextStyle(color: textFieldColor)),
            obscureText: true,
          )
        ],
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: username,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: textFieldColor)),
                labelText: 'username',
                prefixIcon: (Icon(
                  Icons.person,size: 20,
                  color: textFieldColor,
                )),
                labelStyle: TextStyle(color: textFieldColor)),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: username,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: textFieldColor)),
                labelText: 'email',
                prefixIcon: (Icon(
                  Icons.email,size: 20,
                  color: textFieldColor,
                )),
                labelStyle: TextStyle(color: textFieldColor)),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: username,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: textFieldColor)),
                labelText: 'password',
                prefixIcon: (Icon(
                  Icons.lock,size: 20,
                  color: textFieldColor,
                )),
                labelStyle: TextStyle(color: textFieldColor)),
            obscureText: true,
          ),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            'By Pressing "Submit" you agree to our',
            style: (TextStyle(fontWeight: FontWeight.w600)),
          )),
          Center(
            child: Text(
              "terms & conditions",
              style: (TextStyle(
                  fontWeight: FontWeight.w900,
                  color: textFieldColor,
                  decoration: TextDecoration.underline,
                  decorationColor: textFieldColor)),
            ),
          )
        ],
      ),
    );
  }
}
