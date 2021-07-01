// import 'package:bank/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(onTap: () {}, child: Icon(Icons.menu)),
                  Container(
                    height: 59,
                    width: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Good Morning',
                      style: GoogleFonts.inter(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text('Account User#1',
                        style: GoogleFonts.allerta(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  height: 199,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height: 199,
                        width: 344,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: Colors.blue,
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                height: 80,
                                width: 70,
                                color: Colors.red,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 180,
                                width: 190,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: Colors.pink),
                              ),
                            ),
                            Positioned(
                              left: 29,
                              top: 48,
                              child: Text('CARD NUMBER',
                                  style: GoogleFonts.actor(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                            Positioned(
                              left: 29,
                              top: 85,
                              child: Text(
                                '**** **** **** 1425',
                                style: GoogleFonts.actor(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 20,
                              child: Image.network(
                                "https://brand.mastercard.com/content/dam/mccom/brandcenter/thumbnails/mastercard_vrt_pos_92px_2x.png",
                                width: 90,
                                height: 90,
                              ),
                            ),
                            Positioned(
                                left: 29,
                                bottom: 45,
                                child: Text('Random Name',
                                    style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700)))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 199,
                          width: 344,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: Colors.pink),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                child: Container(
                                  height: 80,
                                  width: 70,
                                  color: Colors.teal,
                                ),
                              ),
                            ],
                          )),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
