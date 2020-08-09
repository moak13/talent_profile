import 'dart:convert';

import 'package:flutter/services.dart';

class TalentProfileModel {
  String name;
  String profession;
  String location;
  int price;
  int rate;
  Bio bio;
  List<Work> works;
  List<Skills> skills;
  Review review;
  TalentProfileModel({
    this.name,
    this.profession,
    this.location,
    this.price,
    this.rate,
    this.bio,
    this.works,
    this.skills,
    this.review,
  });

  static Future<TalentProfileModel> load() {
    return rootBundle.loadStructuredData<TalentProfileModel>('assets/data.json',
        (jsonStr) async {
      var jsonData = json.decode(jsonStr);
      return TalentProfileModel.fromMap(jsonData);
    });
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'profession': profession,
      'location': location,
      'price': price,
      'rate': rate,
      'bio': bio?.toMap(),
      'works': works?.map((x) => x?.toMap())?.toList(),
      'skills': skills?.map((x) => x?.toMap())?.toList(),
      'review': review?.toMap(),
    };
  }

  factory TalentProfileModel.fromMap(map) {
    if (map == null) return null;

    return TalentProfileModel(
      name: map['name'],
      profession: map['profession'],
      location: map['location'],
      price: map['price'],
      rate: map['rate'],
      bio: Bio.fromMap(map['bio']),
      works: List.from(map['work']?.map((x) => Work.fromMap(x))),
      skills: List.from(map['skills']?.map((x) => Skills.fromMap(x))),
      review: Review.fromMap(map['review']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TalentProfileModel.fromJson(String source) =>
      TalentProfileModel.fromMap(json.decode(source));
}

class Bio {
  String description;
  Bio({
    this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'description': description,
    };
  }

  factory Bio.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Bio(
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Bio.fromJson(String source) => Bio.fromMap(json.decode(source));
}

class Work {
  String name;
  String description;
  Work({
    this.name,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
    };
  }

  factory Work.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Work(
      name: map['name'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Work.fromJson(String source) => Work.fromMap(json.decode(source));
}

class Skills {
  String name;
  Skills({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  factory Skills.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Skills(
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Skills.fromJson(String source) => Skills.fromMap(json.decode(source));
}

class Review {
  String author;
  String description;
  int rate;
  Review({
    this.author,
    this.description,
    this.rate,
  });

  Map<String, dynamic> toMap() {
    return {
      'author': author,
      'description': description,
      'rate': rate,
    };
  }

  factory Review.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Review(
      author: map['author'],
      description: map['description'],
      rate: map['rate'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Review.fromJson(String source) => Review.fromMap(json.decode(source));
}
