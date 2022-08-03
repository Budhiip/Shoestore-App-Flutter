import 'package:flutter/material.dart';
import 'package:shoestore/constans.dart';
import 'package:shoestore/users/akunpage.dart';
import 'package:shoestore/users/beranda.dart';
import 'package:shoestore/users/favoritepage.dart';
import 'package:shoestore/users/keranjangpage.dart';
import 'package:shoestore/users/transaksipage.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    int bottomNavCurrentIndex = 0;
    List<Widget> container = [
      new Beranda(),
      new FavoritePage(),
      new KeranjangPage(),
      new TransaksiPage(),
      new AkunPage(),
    ];

    return Scaffold(
        body: container[bottomNavCurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Palette.bg1,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              bottomNavCurrentIndex = index;
            });
          },
          currentIndex: bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
                activeIcon: new Icon(
                  Icons.home,
                  color: Palette.bg1,
                ),
                icon: new Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: 'Beranda'),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.favorite,
                color: Palette.bg1,
              ),
              icon: new Icon(
                Icons.favorite_border,
                color: Colors.grey,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.shopping_cart,
                color: Palette.bg1,
              ),
              icon: new Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
              label: 'Keranjang',
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.swap_horiz_sharp,
                color: Palette.bg1,
              ),
              icon: new Icon(
                Icons.swap_horiz_sharp,
                color: Colors.grey,
              ),
              label: 'Transaksi',
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.person_outline,
                color: Palette.bg1,
              ),
              icon: new Icon(
                Icons.person_outline,
                color: Colors.grey,
              ),
              label: 'Profil',
            ),
          ],
        ));
  }
}
