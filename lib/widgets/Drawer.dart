import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {

  var _drawerItems =['NEW & TRENDING NOW','WOMEN','MEN','KIDS','BEAUTY & PERSONAL CARE','HOME & LVING','GADGETS','PLUS SIZE'];
  var _extraItems=['WISHLIST','ACCOUNT','ORDERS','ACCOUNT'];

  var _icons=[Icons.map,Icons.pregnant_woman,Icons.person,Icons.accessibility,Icons.beach_access,Icons.home,Icons.monochrome_photos,Icons.face];
  var _commonItems=['SPRING SUMMER\'20', 'TOPWEAR', 'BOTTOMWEAR','FOOTWEAR','ETHNIC', 'WINTER COLLECTION', 'SPORTS & ACTIVEWEAR', 'INNERWEAR', 'WATCHES','BAGS & WALLETS'];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
          UserAccountsDrawerHeader(

          ),

          ListView.builder(
//            scrollDirection: Axis.vertical,
//            shrinkWrap: true,
            itemCount: _drawerItems.length,
            itemBuilder: (context,index){
              return ListTile(
                title: Text(_drawerItems[index]),
                leading: Icon(_icons[index]),
              );
            },
          ),

            ListView.builder(
              itemCount: _extraItems.length,
                itemBuilder: (context,index){
                  return ListTile(
                    title: Text(_extraItems[index]),
//                    leading: Icon(_icons[index]),
                  );
                },
            ),
          ],
        ),
      ),

    );
  }
}
//      child: ListView(
//        children: <Widget>[
//          UserAccountsDrawerHeader(
//
//          ),
//
//          ListView.builder(
//            scrollDirection: Axis.vertical,
//            shrinkWrap: true,
//            itemCount: _drawerItems.length,
//            itemBuilder: (context,index){
//              return ListTile(
//                title: Text(_drawerItems[index]),
//                leading: Icon(_icons[index]),
//              );
//            },
//          ),
//        ],
//      ),
//    );
//  }
//}




//      child: SingleChildScrollView(
//        child: ListView(
//          shrinkWrap: true,
//          children: <Widget>[
//            UserAccountsDrawerHeader(
//
//            ),
//
//            ListView.builder(
//              itemCount: _drawerItems.length,
//              shrinkWrap: true,
//              itemBuilder: (context,index){
//                return ExpansionTile(
//                    title: Text(_drawerItems[index]),
//                  leading: Icon(_icons[index]),
//                  children: <Widget>[
//                    Expanded(
//                      child: ListView.builder(
//                        itemCount: _commonItems.length,
//                          itemBuilder: (context,idx){
//                          return ListTile(
//                            title: Text(_commonItems[idx]),
//                          );
//                          },
//                      ),
//                    ),
//                  ],
//                );
//              },
//
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
