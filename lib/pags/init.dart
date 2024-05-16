import 'package:cobos0342/utili/LIstsa.dart';
import 'package:cobos0342/utili/card.dart';
import 'package:cobos0342/utili/butone.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class init extends StatelessWidget {
  const init({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final control = PageController();
    return Scaffold(
        backgroundColor: Color(0xffffd962),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: Icon(Icons.monetization_on),
        ),
        bottomNavigationBar: BottomAppBar(
            color: Color(0xffff9407),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(Icons.home), Icon(Icons.settings)],
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Metodos",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " de pago",
                          style: TextStyle(fontSize: 26),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Color(0xffff9a00), shape: BoxShape.circle),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 150,
                child: PageView(
                  controller: control,
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCarta(
                      money: 5512.34,
                      metodo: "Gift Card",
                      color: Color(0xff4093ff),
                    ),
                    MyCarta(
                      money: 12.56,
                      metodo: "PayPal",
                      color: Color(0xff40ff96),
                    ),
                    MyCarta(
                      money: 7513.35,
                      metodo: "Debit Card",
                      color: Color(0xffff9640),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SmoothPageIndicator(
                controller: control,
                count: 3,
                effect: ExpandingDotsEffect(activeDotColor: Color(0xff113ac1)),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MiBotongo(
                        src:
                            "https://raw.githubusercontent.com/CobosTrevinoMartinGabriel/Img_ios/main/bolso-shop-con-asas-grandes.png",
                        name: "Tienda"),
                    MiBotongo(
                        src:
                            "https://raw.githubusercontent.com/CobosTrevinoMartinGabriel/Img_ios/main/carrito-de-compras.png",
                        name: "Carrito"),
                    MiBotongo(
                        src:
                            "https://raw.githubusercontent.com/CobosTrevinoMartinGabriel/Img_ios/main/estrella.png",
                        name: "Favoritos")
                  ],
                ),
              ),
              Column(
                children: [
                  Listsa(
                      src:
                          "https://raw.githubusercontent.com/CobosTrevinoMartinGabriel/Img_ios/main/vigilancia.png",
                      txt1: "Estadistica",
                      txt2: "Conoce tus gustos y preferencias"),
                  Listsa(
                      src:
                          "https://raw.githubusercontent.com/CobosTrevinoMartinGabriel/Img_ios/main/descuento.png",
                      txt1: "Ofertas",
                      txt2: "Mira las ofertas que hay para ti")
                ],
              )
            ],
          ),
        ));
  }
}
