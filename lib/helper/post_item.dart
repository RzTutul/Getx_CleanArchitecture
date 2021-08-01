import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean/home/domain/entities/post_response.dart';
import 'package:getx_clean/home/presentation/pages/post_deatils.dart';

Center postItem(Size size, PostResponse item) {
  return Center(
      child: Container(
    width: double.infinity,
    height: 280,
    padding: new EdgeInsets.all(10.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.white,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album, size: 60),
            title: Text("${item.title}", style: TextStyle(fontSize: 20.0)),
            subtitle: Text("${item.body}", style: TextStyle(fontSize: 12.0)),
          ),
          SizedBox(
            height: 30,
          ),
          new Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Get.to(PostDeatils());
                  },
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.favorite_border),
                      Text(' Like'),
                    ],
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Row(

                    children: <Widget>[
                      Icon(Icons.message_outlined),
                      Text(' Comment'),
                    ],
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.share),
                      Text(' Share'),
                    ],
                  ),
                )
              ],
            ),
            ),
          ),
        ],
      ),
    ),
  ));
}
