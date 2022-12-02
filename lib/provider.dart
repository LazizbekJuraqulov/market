import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/backet_page/backet_page.dart';
import 'package:market/home_page.dart/home_page.dart';
import 'package:market/shop_page/shops_page.dart';

class HomeProvider with ChangeNotifier{
  int activ=0;
  List varible=List.generate(3, (index) => 1);
  List narx=[59,64,34];
  List isTrue=List.generate(3, (index) => false); 

  List pages=[
    HomePage(),
    BacketPage(),
    ShopPage()

  ];
  List words=["Pullover","T-Shirt","Sport Dress"];
   List foto=["assets/foto/1.png","assets/foto/2.png","assets/foto/3.png",];
  func(int activ,List pages){
activ=0;
pages=[HomePage(),ShopPage()];
notifyListeners();
  }
  kup(int index){
    
    varible[index]++;
    notifyListeners();
  }
  kam(int index){
    
    varible[index]--;
    notifyListeners();
  }
  
}