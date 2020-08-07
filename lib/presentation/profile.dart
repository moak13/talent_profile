import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
          color: Colors.black,
        ),
        title: Container(
          margin: const EdgeInsets.all(5),
          height: _screenHeight / 100 * 6,
          width: _screenWidth / 100 * 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Select artist type',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.chat_bubble_outline),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: _screenHeight / 100 * 21,
                      color: Colors.purple,
                      width: _screenWidth,
                    ),
                    Container(
                      height: _screenHeight / 100 * 22,
                      width: _screenWidth,
                      color: Colors.white,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  RatingBarIndicator(
                                    rating: 4,
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: Colors.purple,
                                    ),
                                    itemCount: 5,
                                    itemSize: _screenWidth / 100 * 5,
                                    direction: Axis.horizontal,
                                  ),
                                  Text(
                                    '[15]',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: _screenWidth / 100 * 4,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Arun Arora',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: _screenWidth / 100 * 4,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Graphic Designer',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: _screenWidth / 100 * 4,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Mumbai',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: _screenWidth / 100 * 4,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        '12\$',
                                        style: TextStyle(
                                          fontSize: _screenWidth / 100 * 6,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.edit),
                                        onPressed: () {},
                                        iconSize: _screenWidth / 100 * 7,
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: _screenHeight / 100 * 3.5,
                                      width: _screenHeight / 100 * 9,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.purpleAccent,
                                            Colors.blueAccent
                                          ],
                                          begin: AlignmentDirectional.topStart,
                                          end: AlignmentDirectional.bottomEnd,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'HIRE',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: _screenWidth / 100 * 4,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: _screenHeight / 100 * 15,
                  left: _screenWidth / 100 * 6,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: _screenHeight / 100 * 3,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: _screenHeight / 100 * 20,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'About me',
                      style: TextStyle(color: Colors.grey),
                    ),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {},
                      iconSize: _screenWidth / 100 * 7,
                    ),
                  ],
                ),
                Text(
                  'hbsvhvbjsdbhvbsdbhdbsdhjbcjbdvhbsjbhvbdjbvhdsbcsdhbvjdbvhdbsdhbhdbjsbhbsjkdbvhsdb vsdvhbdvsdhv b',
                  style: TextStyle(
                    fontSize: _screenWidth / 100 * 4,
                    color: Colors.grey,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          SizedBox(height: _screenHeight / 100 * 2),
          Container(
            color: Colors.white,
            height: _screenHeight / 100 * 30,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Work',
                      style: TextStyle(color: Colors.grey),
                    ),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {},
                      iconSize: _screenWidth / 100 * 7,
                    ),
                  ],
                ),
                Container(
                  height: _screenHeight / 100 * 25,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: _screenHeight / 100 * 15,
                          width: _screenWidth / 100 * 40,
                          color: Colors.blue,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                height: _screenHeight / 100 * 10,
                                width: _screenWidth / 100 * 40,
                                decoration: BoxDecoration(
                                    // image: DecorationImage(
                                    //   image: AssetImage('assetName'),
                                    //   fit: BoxFit.cover,
                                    // ),
                                    color: Colors.red),
                              ),
                              Container(
                                height: _screenHeight / 100 * 10,
                                width: _screenWidth / 100 * 50,
                                color: Colors.pink,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Project name',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: _screenWidth / 100 * 3,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Project description',
                                      style: TextStyle(
                                        color: Colors.black26,
                                        fontSize: _screenWidth / 100 * 3,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
          SizedBox(
            height: _screenHeight / 100 * 2,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: _screenHeight / 100 * 20,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Skills',
                      style: TextStyle(color: Colors.grey),
                    ),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {},
                      iconSize: _screenWidth / 100 * 7,
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Chip(label: Text('Designing')),
                      SizedBox(
                        width: 20,
                      ),
                      Chip(label: Text('Photoshop')),
                      SizedBox(
                        width: 20,
                      ),
                      Chip(label: Text('CSS')),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                Chip(label: Text('data')),
                // SizedBox(
                //   width: 20,
                // ),
              ],
            ),
          ),
          SizedBox(height: _screenHeight / 100 * 2),
          Container(
            color: Colors.white,
            height: _screenHeight / 100 * 30,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Reviews',
                      style: TextStyle(color: Colors.grey),
                    ),
                    FlatButton(
                      child: Text('See all'),
                      onPressed: () {},
                      // iconSize: _screenWidth / 100 * 7,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: _screenWidth / 100 * 4,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'hbvbfvbsjdbhdsbjvbfbzjdjsdnvjsdbff',
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: _screenWidth / 100 * 4,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Alexander',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black26,
                                fontSize: _screenWidth / 100 * 4,
                              ),
                            ),
                            SizedBox(width: _screenWidth / 100 * 22),
                            RatingBarIndicator(
                              rating: 4,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.purple,
                              ),
                              itemCount: 5,
                              itemSize: _screenWidth / 100 * 5,
                              direction: Axis.horizontal,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
