import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:talent_profile/bloc/profile_bloc.dart';

import '../data/talent_profile_model.dart';
import '../data/talent_profile_model.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  double _screenHeight;
  double _screenWidth;
  TextStyle _headingTitleStyle;
  TalentProfileModel profile;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProfileBloc>(context).add(GetProfile());
  }

  @override
  Widget build(BuildContext context) {
    _screenHeight = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
    // each heading title Style
    _headingTitleStyle = TextStyle(
        color: Colors.grey,
        fontSize: _screenHeight * 0.023,
        fontWeight: FontWeight.w800);
    //print(TalentProfileModel().load());
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state is TalentProfileState) {
              profile = state.profile;
              return _scaffold();
            }
            return Container(
              child: Center(child: Text("Loading")),
            );
          },
        ),
      ),
    );
  }

  Widget _scaffold() {
    return Container(
      child: Column(children: [
        _appBar(),
        Container(
          height: _screenHeight * 0.862,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: _screenHeight * 0.01),
                _header(),
                _spacer(_screenHeight * 0.035),
                _aboutMe(),
                _spacer(_screenHeight * 0.02),
                _skillsWidget(),
                _spacer(_screenHeight * 0.02),
                _reviews()
              ],
            ),
          ),
        )
      ]),
    );
  }

  Widget _appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _hamburger(),
        Container(
          width: _screenWidth * 0.7,
          height: _screenHeight * 0.05,
          padding: EdgeInsets.only(left: 20.0, bottom: 3.0),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.15),
            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 2.0),
            borderRadius: BorderRadius.all(
              Radius.circular(_screenWidth * 0.2),
            ),
          ),
          child: Center(
              child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Select artist type",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold)))),
        ),
        Icon(
          Icons.message,
          size: _screenHeight * 0.05,
        )
      ],
    );
  }

  Widget _header() {
    return Stack(
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RatingBarIndicator(
                            rating: 4,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.purple,
                            ),
                            itemCount: 5,
                            itemSize: _screenWidth * 0.06,
                            direction: Axis.horizontal,
                          ),
                          Text(
                            '[15]',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              profile.name,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: _screenWidth / 100 * 5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: _screenHeight * 0.008),
                            Text(
                              profile.profession,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: _screenWidth / 100 * 4,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: _screenHeight * 0.008),
                            Text(
                              profile.location,
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "${profile.price.toString()}\$",
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
                              height: _screenHeight / 100 * 4.5,
                              width: _screenHeight / 100 * 11,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(_screenWidth * 0.012)),
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
    );
  }

  Widget _aboutMe() {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 20.0, vertical: _screenHeight * 0.01),
      height: _screenHeight / 100 * 20,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'About me',
                style: _headingTitleStyle,
              ),
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
                iconSize: _screenWidth / 100 * 7,
              ),
            ],
          ),
          Text(
            profile.bio.description,
            style: TextStyle(
              fontSize: _screenWidth / 100 * 4,
              color: Colors.grey,
            ),
            softWrap: true,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  Widget _skillsWidget() {
    return Container(
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
                style: _headingTitleStyle,
              ),
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
                iconSize: _screenWidth / 100 * 7,
              ),
            ],
          ),
          Wrap(
            spacing: 8.0, // gap between adjacent chips
            runSpacing: 4.0, // gap between lines
            children: profile.skills.map((e) => _skillCard(e.name)).toList(),
          )
        ],
      ),
    );
  }

  Widget _reviews() {
    return Container(
      color: Colors.white,
      height: _screenHeight / 100 * 30,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Reviews', style: _headingTitleStyle),
              FlatButton(
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: _screenWidth * 0.7,
                    child: Text(
                      profile.review.description,
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: _screenWidth / 100 * 4,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _screenHeight * 0.01,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        profile.review.author,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black26,
                          fontSize: _screenWidth / 100 * 5,
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
    );
  }

  Widget _spacer(height) {
    return Container(
      color: Color(0XFFDBEAF2),
      height: height,
    );
  }

  Widget _hamburger() {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          _line(width: _screenWidth * 0.1),
          SizedBox(height: _screenHeight * 0.005),
          _line(width: _screenWidth * 0.1),
          SizedBox(height: _screenHeight * 0.005),
          Row(
            children: [
              SizedBox(
                width: _screenWidth * 0.028,
              ),
              _line(width: _screenWidth * 0.07),
            ],
          ),
        ],
      ),
    );
  }

  Widget _line({width}) {
    return Container(
      height: _screenHeight * 0.005,
      width: width,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
    );
  }

  Widget _skillCard(text) {
    return Chip(
      backgroundColor: Colors.grey.withOpacity(0.7),
      label: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: _screenHeight * 0.02,
        ),
      ),
    );
  }
}
