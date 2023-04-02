import 'package:neumorphic_cv/constants/assets.dart';
import 'package:neumorphic_cv/constants/strings.dart';

class Env {
  static const String imageURL = Assets.myPic;

  static const String name = "Jinosh";

  static const String profession = "Flutter Developer";

  static const String address = """
No 14/28 , Nehru Nagar 10th Street,
Tondiarpet, Chennai-81,
Tamil Nadu, India
""";

  static const String gitID = "jinosh05";

  static const String gitlink = "https://github.com/jinosh05";

  static const String linkedID = "Jinosh D";

  static const String linkedinLink = "https://www.linkedin.com/in/jinosh/";

  static const String gmailId = "jinosh05";

  static const String aboutMe =
      "Hello there and thanks for reviewing my profile . I'm quite an expert in using coding and front-end development using Flutter. I have been developing Web and Mobile apps for the past year and never quitted learning new technologies.";

  static const List<Map> skills = [
    {
      "name": S.communication,
      'rating': 4,
    },
    {
      "name": S.creativity,
      'rating': 3,
    },
    {
      "name": S.proactivity,
      'rating': 5,
    },
    {
      "name": S.problemSolving,
      'rating': 4,
    },
  ];

  static const List<Map> softwares = [
    {
      "name": "Flutter",
      "image": Assets.flutter,
      'rating': 5,
    },
    {
      "name": "Firebase",
      "image": Assets.firebase,
      'rating': 4,
    },
    {
      "name": "Python",
      "image": Assets.python,
      'rating': 3,
    },
    {
      "name": "JavaScript",
      "image": Assets.javascript,
      'rating': 3,
    },
  ];
}


  // static const String a="";