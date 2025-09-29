import 'package:neumorphic_cv/constants/assets.dart';
import 'package:neumorphic_cv/constants/strings.dart';

class Env {
  static const String imageURL = Assets.myPic;

  static const String name = "Jinosh";

  static const String profession = "Flutter Developer";

  static const String address = """
Tondiarpet, Chennai-81,
Tamil Nadu, India
""";

  static const List<Map> btnlinks = [
    {
      'url': "https://github.com/jinosh05",
      'id': "jinosh05",
      'icon': Assets.gitIcon,
    },
    {
      'url': "https://www.linkedin.com/in/jinosh/",
      'id': "Jinosh D",
      'icon': Assets.linkedIn,
    },
    {
      'url': "mailto:$gmailId@gmail.com",
      'id': gmailId,
      'icon': Assets.gmailIcon,
    },
    {'url': "tel:$mobile", 'id': mobile, 'icon': Assets.phone},
  ];

  static const String mobile = "+918870358783";

  static const String gmailId = "jinosh05";

  static const String aboutMe = """
Crafting high-quality apps that blend stunning design with robust functionality, with 4.9 years of experience delivering cross‑platform products for iOS, Android, and web. From concept to store‑ready release, projects are taken from idea to polished launch.

Core Skills Include:
* Flutter & Dart | Mobile & Web Development 
* UI/UX Design | State Management (Bloc, Provider, Cubit) 
* API Integration (RESTful APIs, Firebase) | Beginner: Python FastAPI 
* Version Control | App Publishing | Agile 

Career Highlights:
* Led multi-platform projects and delivered ahead of deadlines, balancing performance, UX, and maintainability.
* Published apps on Google Play Store and Apple App Store with smooth review cycles and release management.
* Integrated RESTful APIs, Firebase services, and recently began building backend endpoints with FastAPI to enhance user experiences.
""";

  static const List<Map> skills = [
    {"name": S.communication, 'rating': 5},
    {"name": S.creativity, 'rating': 3},
    {"name": S.proactivity, 'rating': 5},
    {"name": S.problemSolving, 'rating': 4},
  ];

  static const List<Map> softwares = [
    {
      "name": "Flutter",
      "image": Assets.flutter,
      'rating': 5,
      'url': "https://flutter.dev/",
    },
    {
      "name": "Firebase",
      "image": Assets.firebase,
      'rating': 4,
      'url': "https://firebase.google.com/",
    },
    {
      "name": "Python",
      "image": Assets.python,
      'rating': 3,
      'url': "https://www.python.org/",
    },
    {
      "name": "JS",
      "image": Assets.javascript,
      'rating': 3,
      'url': "https://www.javascript.com/",
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
      'btnTitle': 'excrin.com',
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
      'btnTitle': 'excrin.com',
    },
    {
      "company": "Connective Links Technology",
      'logo': Assets.clt,
      'position': "Flutter Developer",
      'duration': "07/2022 - 05/2023",
      'experience': """
* Developed 2 E-commerce based Apps
* Published Apps in AppStore, PlayStore
* An ERP Based App
* A Delivery Boy App
""",
      'site': 'https://connectivelinkstechnology.com/',
      'btnTitle': 'CLT',
    },
    {
      "company": "MindOrigin Technologies",
      'logo': Assets.mot,
      'position': "Senior Flutter Developer",
      'duration': "07/2023 - 07/2024",
      'experience': """
* Customised Chart Packages
* Worked on WebSocket and MQTT
* Worked on Complete POC of Trading app in Flutter Android, iOS and Web
""",
      'site': 'https://mindorigin.in/',
      'btnTitle': 'MOT',
    },
    {
      'company': 'Develup',
      'logo': Assets.develup,
      'position': 'Flutter Developer - Freelancing',
      'duration': '02/2025 - 08/2025',
      'experience': """
* Built and shipped a production Flutter app for Android and iOS
* Implemented AI-powered job search features and in-app flows
* Owned end-to-end Flutter development, from UI/UX to API integration
""",
      'site': 'https://develup.com/',
      'btnTitle': 'Develup',
    },
    {
      'company': 'Fellow Founder',
      'logo': Assets.fellowFounder,
      'position': 'Flutter and FastAPI Developer',
      'duration': '07/2024 - Present',
      'experience': """
* Building and maintaining a cross-platform Flutter app with production releases on Android and iOS
* Developing FastAPI backend services: REST endpoints, auth, and data models
* Driving end-to-end features: UI/UX, state management, API integration, and app publishing
""",
      'site': 'https://www.fellowfounder.in/',
      'btnTitle': 'Fellow Founder',
    },
  ];

  static const List<String> languages = [
    "Tamil",
    "English",
    "Hindi",
    "Kannada",
  ];

  static const List<Map> appsInfo = [
    {
      'img': Assets.cg,
      'name': "Cake Gallery",
      'links': [
        {
          'icon': Assets.appstore,
          'url':
              "https://apps.apple.com/us/app/cake-gallery-cakes-gifts-etc/id6446891633",
        },
        {
          'icon': Assets.playstore,
          'url':
              "https://play.google.com/store/apps/details?id=com.clt.cakegallery",
        },
      ],
    },
    {
      'img': Assets.gdo,
      'name': "GDO Gifts",
      'links': [
        {
          'icon': Assets.appstore,
          'url': "https://apps.apple.com/us/app/gdo-gifts/id6444722893",
        },
        {
          'icon': Assets.playstore,
          'url':
              "https://play.google.com/store/apps/details?id=com.clt.gdogifts",
        },
      ],
    },
    {
      'img': Assets.b2b,
      'name': "B2B Purchase",
      'links': [
        {
          'icon': Assets.playstore,
          'url': "https://play.google.com/store/apps/details?id=com.fluttr.b2b",
        },
      ],
    },
    {
      'img': Assets.doclense,
      'name': "Doclense",
      'links': [
        {'icon': Assets.gitIcon, 'url': "https://github.com/jinosh05/DocLense"},
      ],
    },
    {'img': Assets.placeholder, 'name': "Watscooking", 'links': []},
    {
      'img': Assets.placeholder,
      'name': "CBI Service (Ecommerce)",
      'links': [
        {
          'icon': Assets.playstore,
          'url':
              "https://play.google.com/store/apps/details?id=com.cbi_product.app",
        },
      ],
    },
    {'img': Assets.placeholder, 'name': "Firstock", 'links': []},
    {
      'img': Assets.quran,
      'name': "Al Quran Multilingual Pro",
      'links': [
        {
          'icon': Assets.appstore,
          'url':
              "https://apps.apple.com/in/app/al-quran-multilingual/id6738510896",
        },
        {
          'icon': Assets.playstore,
          'url': "https://play.google.com/store/apps/details?id=jino.quran.app",
        },
      ],
    },
    {
      'img': Assets.quran,
      'name': "Al Quran Multilingual",
      'links': [
        {
          'icon': Assets.windows,
          'url':
              "https://github.com/jinosh05/Al-Quran-Multilingual-Desktop/releases/download/1.0.27/Al-Quran-Multilingual-Setup.exe",
        },
        {
          'icon': Assets.linux,
          'url':
              "https://github.com/jinosh05/Al-Quran-Multilingual-Desktop/releases/download/1.0.27/Al-Quran-Multilingual-x86_64.AppImage",
        },
        {
          'icon': Assets.playstore,
          'url':
              "https://apps.apple.com/in/app/al-quran-multilingual/id6738510896",
        },
      ],
    },
    {
      'img': Assets.develup,
      'name': "DevelUp: Jobs & Upskilling",
      'links': [
        {
          'icon': Assets.appstore,
          'url':
              'https://apps.apple.com/us/app/develup-jobs-upskilling/id6742466123?uo=2',
        },
        {
          'icon': Assets.playstore,
          'url':
              'https://play.google.com/store/apps/details?id=com.develup.app',
        },
      ],
    },
    {
      'img': Assets.fellowFounder,
      'name': "Fellow Founder",
      'links': [
        {
          'icon': Assets.appstore,
          'url': 'https://apps.apple.com/in/app/fellow-founder/id6480413758',
        },
        {
          'icon': Assets.playstore,
          'url':
              'https://play.google.com/store/apps/details?id=com.fellow_founder.app',
        },
      ],
    },
  ];

  static const List<String> technicalSkill = [
    "Flutter BLOC, Cubit",
    "MVC, MVVM Pattern",
    'App Publishing',
    'UniLinks -iOS, Android',
    'Agile and Robust Development',
    'Firebase,Map Integration',
    'Hive,Sqflite Storage',
    'Responsive Flutter Web',
    "Python FastAPI Development",
  ];

  static const List<Map> education = [
    {
      'course': "BCA",
      'batch': "2018-2021",
      'college': "Apollo Arts and Science College",
      'img': Assets.apollo,
    },
    {
      'course': "MCA (Distance Education)",
      'batch': "2021-2023",
      'college': "Annamalai University - DDE",
      'img': Assets.au,
    },
  ];
}

// static const String a=
