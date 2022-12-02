import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/provider.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    final navbar = Provider.of<HomeProvider>(context);
    return Scaffold(
      body: navbar.pages[navbar.activ],
      bottomNavigationBar: ClipRRect(
borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0), ),
        child: BottomNavigationBar(
        
            fixedColor: Color(0xffDB3022),
            currentIndex: navbar.activ,
            unselectedLabelStyle:
                TextStyle(fontSize: 10, color: Color(0xff9B9B9B)),
            onTap: (value) {
              navbar.activ = value;
              navbar.func(navbar.activ, navbar.pages);
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: Color(0xffffffff),
                activeIcon: SvgPicture.asset("assets/Icons/homeactive.svg"),
                icon: SvgPicture.asset("assets/Icons/home.svg"),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/Icons/backet.svg"),
                  label: "Shop"),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset("assets/Icons/shopactive.svg"),
                  icon: SvgPicture.asset("assets/Icons/shop.svg"),
                  label: "Bag"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/Icons/favorite.svg"),
                  label: "Favorite"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/Icons/person.svg"),
                  label: "Person"),
            ]),
      ),
    );
  }
}
