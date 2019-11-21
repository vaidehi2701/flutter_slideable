import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slide Tile',
      home: Scaffold(
        body: SafeArea(
          child:Column(
                children: <Widget>[
                  Container(
                      width: 300,
                      height: 585,
                      child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 250),
                            child: Column(
                              children: <Widget>[
                                Text(' Coding With Flash',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.red[600],
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                SizedBox(height: 20),
                                Text('Example Of Slideable In List',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black87,
                                      fontWeight:FontWeight.w400
                                  ),
                                )
                              ],
                            ),
                          )
                      )
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: ProfileBanner()),
                ],
              )
        ),
      ),
    );
  }
}
class ProfileBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey[300], blurRadius: 6, offset: Offset(0, -2))
        ]),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(
              Icons.supervised_user_circle,
              color: Colors.white,
            ),
          ),
          trailing: Icon(Icons.arrow_left),
          title: Text('Code With Flash'),
          subtitle: Text('Flutter Applications Developer'),
        ),
      ),
      actions: <Widget>[
        IconSlideAction(
          caption: 'Archive',
          color: Colors.blue,
          icon: Icons.archive,
          onTap: () {},
        ),
        IconSlideAction(
          caption: 'Share',
          color: Colors.indigo,
          icon: Icons.share,
          onTap: () {},
        ),
      ],
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'More',
          color: Colors.black45,
          icon: Icons.more_horiz,
          onTap: () {},
        ),
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () {},
        ),
      ],

    );
  }
}

