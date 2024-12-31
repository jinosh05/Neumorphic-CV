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

  static const List<Map> btnlinks = [
    {
      'url': "https://github.com/jinosh05",
      'id': "jinosh05",
      'icon': Assets.gitIcon
    },
    {
      'url': "https://www.linkedin.com/in/jinosh/",
      'id': "Jinosh D",
      'icon': Assets.linkedIn
    },
    {
      'url': "mailto:$gmailId@gmail.com",
      'id': gmailId,
      'icon': Assets.gmailIcon,
    },
    {
      'url': "tel:$mobile",
      'id': mobile,
      'icon': Assets.phone,
    },
  ];

  static const String mobile = "+918870358783";

  static const String gmailId = "jinosh05";

  static const String aboutMe = """
With 4+ years of experience, I specialize in crafting high-quality apps that blend stunning design with robust functionality. Whether for iOS, Android, or the web, I turn ideas into polished, store-ready products.

Core Skills Include:
* Flutter & Dart | Mobile & Web Development
* UI/UX Design | State Management (Bloc, Provider, Cubit)
* API Integration (RESTful APIs, Firebase)
* Version Control | App Publishing | Agile

🚀 Career Highlights:
* Led multi-platform projects, delivering ahead of deadlines.
* Published apps on Google Play Store & Apple App Store.
* Seamlessly integrated APIs for enhanced user experiences.
""";
  // "Hello, and thanks for visiting my profile.\nI'm a Senior Flutter Developer with 3.5 years of experience in crafting high-quality mobile and web applications. I have a proven track record of developing and publishing apps on both the Google Play Store and Apple App Store. My expertise spans across Android, iOS, and web platforms, where I leverage the Flutter framework and Dart language to deliver seamless, responsive, and user-friendly applications. With a strong foundation in UI/UX design, API integration, and state management, I am committed to building innovative solutions and continuously enhancing my skills to stay ahead in the fast-evolving tech landscape.";

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
      'duration': "07/2022 - 05/2023",
      'experience': """
* Developed 2 E-commerce based Apps
* Published Apps in AppStore, PlayStore
* An ERP Based App
* A Delivery Boy App
""",
      'site': 'https://connectivelinkstechnology.com/',
      'btnTitle': 'CLT'
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
      'btnTitle': 'MOT'
    },
  ];

  static const List<String> languages = [
    "Tamil",
    "English",
    "Hindi",
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
      ]
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
      ]
    },
    {
      'img': Assets.b2b,
      'name': "B2B Purchase",
      'links': [
        {
          'icon': Assets.playstore,
          'url': "https://play.google.com/store/apps/details?id=com.fluttr.b2b",
        },
      ]
    },
    {
      'img': Assets.doclense,
      'name': "Doclense",
      'links': [
        {
          'icon': Assets.gitIcon,
          'url': "https://github.com/jinosh05/DocLense",
        },
      ]
    },
    {
      'img': Assets.placeholder,
      'name': "Watscooking",
      'links': [],
    },
    {
      'img': Assets.placeholder,
      'name': "CBI Service (Ecommerce)",
      'links': [
        {
          'icon': Assets.playstore,
          'url':
              "https://play.google.com/store/apps/details?id=com.cbi_product.app",
        },
      ]
    },
    {
      'img': Assets.placeholder,
      'name': "Firstock",
      'links': [],
    },
    {
      'img': Assets.quran,
      'name': "Al Quran Multilingual",
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
      ]
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
    'Responsive Flutter Web'
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
    }
  ];
}

// static const String a=
