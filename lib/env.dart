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
      'url': "https://flutter.dev/"
    },
    {
      "name": "Firebase",
      "image": Assets.firebase,
      'rating': 4,
      'url': "https://firebase.google.com/"
    },
    {
      "name": "Python",
      "image": Assets.python,
      'rating': 3,
      'url': "https://www.python.org/"
    },
    {
      "name": "JS",
      "image": Assets.javascript,
      'rating': 3,
      'url': "https://www.javascript.com/"
    },
  ];

  static const List<Map> experiences = [
    {
      "company": "Excrin ThinkLabs",
      'logo': Assets.excrin,
      'position': "Flutter Intern",
      'duration': "Jan-May 2021",
      'experience': """
* Developed UI
* Learn't and Developed Firebase, Map, etc..
""",
      'site': 'https://excrin.com/',
      'btnTitle': 'excrin.com'
    },
    {
      "company": "Excrin ThinkLabs",
      'logo': Assets.excrin,
      'position': "Flutter Developer",
      'duration': "06/2021-06/2022",
      'experience': """
* Developed an E-commerce Food Delivery app
* Published Apps in Playstore
""",
      'site': 'https://excrin.com/',
      'btnTitle': 'excrin.com'
    },
    {
      "company": "Connective Links Technology",
      'logo': Assets.clt,
      'position': "Flutter Developer",
      'duration': "07/2022 - Current",
      'experience': """
* Developed 2 E-commerce based Apps
* Published Apps in AppStore, PlayStore
* An ERP Based App
* A Delivery Boy App
""",
      'site': 'https://connectivelinkstechnology.com/',
      'btnTitle': 'CLT'
    },
  ];

  static const List<String> languages = [
    "Tamil",
    "English",
    "Hindi",
  ];
}


  // static const String a="";