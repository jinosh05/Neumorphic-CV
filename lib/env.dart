import 'package:neumorphic_cv/constants/assets.dart';
import 'package:neumorphic_cv/constants/strings.dart';

class Env {
  // ─────────────────────────────────────────────
  //  Personal Info
  // ─────────────────────────────────────────────
  static const String imageURL = Assets.myPic;
  static const String name = "Jinosh D";
  static const String profession = "Full-Stack Flutter & FastAPI Developer";
  static const String tagline =
      "Building cross-platform products — from pixel to production.";
  static const String address =
      "Tondiarpet, Chennai – 600081\nTamil Nadu, India";

  // ─────────────────────────────────────────────
  //  Contact
  // ─────────────────────────────────────────────
  static const String mobile = "+91 88703 58783";
  static const String gmailId = "jinosh05";

  // ─────────────────────────────────────────────
  //  Social / Contact Links
  // ─────────────────────────────────────────────
  static const List<Map<String, String>> btnlinks = [
    {
      'url': "https://github.com/jinosh05",
      'id': "github.com/jinosh05",
      'icon': Assets.gitIcon,
      'label': "GitHub",
    },
    {
      'url': "https://www.linkedin.com/in/jinosh/",
      'id': "linkedin.com/in/jinosh",
      'icon': Assets.linkedIn,
      'label': "LinkedIn",
    },
    {
      'url': "mailto:$gmailId@gmail.com",
      'id': "$gmailId@gmail.com",
      'icon': Assets.gmailIcon,
      'label': "Email",
    },
    {
      'url': "tel:+918870358783",
      'id': mobile,
      'icon': Assets.phone,
      'label': "Phone",
    },
  ];

  // ─────────────────────────────────────────────
  //  About Me
  // ─────────────────────────────────────────────
  static const String aboutMe = """
I'm a results-driven Full-Stack Developer with 5+ years of experience designing, building, and shipping high-performance cross-platform applications — from a single codebase to five platforms simultaneously.

My core expertise lies in Flutter & Dart for mobile, web, and desktop development, paired with FastAPI (Python) for building robust backend APIs and feature-rich admin dashboards. I take pride in delivering pixel-perfect, intuitive UI/UX that users love, backed by clean, maintainable architecture.

I've worked across early-stage startups, growing product teams, and freelance engagements — adapting quickly, owning end-to-end delivery, and consistently shipping products that reach real users on the App Store, Play Store, and beyond.

What sets me apart is my ability to go beyond the frontend — I architect complete solutions, from data models and REST APIs to state management, offline storage, deep-link handling, and production deployment.
""";

  // ─────────────────────────────────────────────
  //  Soft Skills
  // ─────────────────────────────────────────────
  static const List<Map<String, dynamic>> skills = [
    {"name": S.communication, 'rating': 5},
    {"name": S.creativity, 'rating': 4},
    {"name": S.proactivity, 'rating': 5},
    {"name": S.problemSolving, 'rating': 5},
    {"name": "Teamwork & Collaboration", 'rating': 5},
    {"name": "Adaptability", 'rating': 5},
    {"name": "Attention to Detail", 'rating': 4},
    {"name": "Time Management", 'rating': 4},
  ];

  // ─────────────────────────────────────────────
  //  Technical Skills
  // ─────────────────────────────────────────────
  static const List<String> technicalSkill = [
    "Flutter (Mobile · Web · Desktop)",
    "Dart — BLoC, Cubit, Provider",
    "MVC & MVVM Architecture",
    "FastAPI (Python) — REST APIs & Admin Dashboards",
    "Firebase — Auth, Firestore, FCM, Storage",
    "Google Maps & Location Services",
    "Hive · SQLite (sqflite) · SharedPreferences",
    "WebSocket & MQTT Protocol",
    "Custom Package Development",
    "Deep Links & Universal Links (iOS & Android)",
    "Responsive Flutter Web",
    "App Store & Play Store Publishing",
    "Git — GitHub / GitLab",
    "Agile / Scrum Development",
    "RESTful API Integration",
    "In-App Purchases (RevenueCat / Native)",
  ];

  // ─────────────────────────────────────────────
  //  Technologies / Frameworks
  // ─────────────────────────────────────────────
  static const List<Map<String, dynamic>> softwares = [
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
      "name": "FastAPI",
      "image": Assets.python,
      'rating': 4,
      'url': "https://fastapi.tiangolo.com/",
    },
    {
      "name": "Python",
      "image": Assets.python,
      'rating': 4,
      'url': "https://www.python.org/",
    },
    {
      "name": "JavaScript",
      "image": Assets.javascript,
      'rating': 3,
      'url': "https://developer.mozilla.org/en-US/docs/Web/JavaScript",
    },
  ];

  // ─────────────────────────────────────────────
  //  Work Experience
  // ─────────────────────────────────────────────
  static const List<Map<String, dynamic>> experiences = [
    {
      "company": "Excrin ThinkLabs",
      'logo': Assets.excrin,
      'position': "Flutter Intern",
      'duration': "Jan 2021 – May 2021",
      'experience': """
• Built and iterated on multiple UI screens from Figma designs using Flutter.
• Integrated Firebase services (Authentication, Firestore, Cloud Messaging).
• Implemented Google Maps integration for location-aware features.
• Collaborated with the senior team to understand production-grade app workflows.
""",
      'site': 'https://excrin.com/',
      'btnTitle': 'excrin.com',
    },
    {
      "company": "Excrin ThinkLabs",
      'logo': Assets.excrin,
      'position': "Flutter Developer",
      'duration': "Jun 2021 – Jun 2022",
      'experience': """
• Developed a fully functional E-commerce Food Delivery application end-to-end.
• Implemented cart management, order tracking, and payment gateway integration.
• Successfully published the app on the Google Play Store.
• Maintained and improved app performance based on user feedback.
""",
      'site': 'https://excrin.com/',
      'btnTitle': 'excrin.com',
    },
    {
      "company": "Connective Links Technology",
      'logo': Assets.clt,
      'position': "Flutter Developer",
      'duration': "Jul 2022 – May 2023",
      'experience': """
• Developed two feature-rich E-commerce applications for iOS and Android.
• Published apps on both the Apple App Store and Google Play Store.
• Built an ERP-integrated mobile application for internal business operations.
• Developed a dedicated Delivery Boy application with real-time order tracking.
""",
      'site': 'https://connectivelinkstechnology.com/',
      'btnTitle': 'CLT',
    },
    {
      "company": "MindOrigin Technologies",
      'logo': Assets.mot,
      'position': "Senior Flutter Developer",
      'duration': "Jul 2023 – Jul 2024",
      'experience': """
• Architected and developed a complete POC for a real-time Trading application targeting Flutter Android, iOS, and Web.
• Built and published custom Flutter chart packages with specialised candlestick and indicator support.
• Integrated WebSocket and MQTT protocols for live market data streaming.
• Mentored junior developers and established best practices for the Flutter team.
""",
      'site': 'https://mindorigin.in/',
      'btnTitle': 'MOT',
    },
    {
      'company': 'Develup',
      'logo': Assets.develup,
      'position': 'Flutter Developer — Freelance',
      'duration': 'Feb 2025 – Aug 2025',
      'experience': """
• Built and shipped a production-ready Flutter app across Android and iOS from scratch.
• Implemented AI-powered job search features, onboarding flows, and in-app interactions.
• Owned complete Flutter development lifecycle — UI/UX, state management, API integration, and release management.
""",
      'site': 'https://develup.com/',
      'btnTitle': 'Develup',
    },
    {
      'company': 'Fellow Founder',
      'logo': Assets.fellowFounder,
      'position': 'Flutter & FastAPI Developer',
      'duration': 'Jul 2024 – Present',
      'experience': """
• Building and maintaining a cross-platform Flutter application with active releases on Android and iOS.
• Developing and scaling FastAPI backend services — REST endpoints, JWT authentication, and database models.
• Driving end-to-end feature development: UI/UX, BLoC state management, API integration, and App Store/Play Store publishing.
• Collaborating directly with founders to shape product direction and technical strategy.
""",
      'site': 'https://www.fellowfounder.in/',
      'btnTitle': 'Fellow Founder',
    },
  ];

  // ─────────────────────────────────────────────
  //  Languages Known
  // ─────────────────────────────────────────────
  static const List<String> languages = [
    "Tamil",
    "English",
    "Hindi",
    "Kannada",
    "Malayalam",
    "Telugu",
    "Urdu",
  ];

  // ─────────────────────────────────────────────
  //  Portfolio — Published Apps
  // ─────────────────────────────────────────────
  static const List<Map<String, dynamic>> appsInfo = [
    {
      'img': Assets.fellowFounder,
      'name': "Fellow Founder",
      'description': "A networking platform for startup founders.",
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
    {
      'img': Assets.quran,
      'name': "Al Quran Multilingual Pro",
      'description':
          "A comprehensive multilingual Quran app across 5 platforms.",
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
      'name': "Al Quran Multilingual (Desktop)",
      'description': "Windows & Linux desktop builds of the Quran app.",
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
          'icon': Assets.appstore,
          'url':
              "https://apps.apple.com/in/app/al-quran-multilingual/id6738510896",
        },
      ],
    },
    {
      'img': Assets.skolara,
      'name': "Skolara",
      'description': "An education & upskilling platform for students.",
      'links': [
        {
          'icon': Assets.appstore,
          'url':
              'https://apps.apple.com/in/app/skolara-where-dream-matters/id6753106951',
        },
        {
          'icon': Assets.playstore,
          'url':
              'https://play.google.com/store/apps/details?id=com.skolara.app',
        },
      ],
    },
    {
      'img': Assets.cg,
      'name': "Cake Gallery",
      'description': "E-commerce app for cakes & gifts delivery.",
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
      'description': "Gifts & flowers delivery e-commerce platform.",
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
      'description': "B2B wholesale purchasing app for business clients.",
      'links': [
        {
          'icon': Assets.playstore,
          'url': "https://play.google.com/store/apps/details?id=com.fluttr.b2b",
        },
      ],
    },
    {
      'img': Assets.doclense,
      'name': "DocLense",
      'description': "Open-source document scanner built with Flutter.",
      'links': [
        {'icon': Assets.gitIcon, 'url': "https://github.com/jinosh05/DocLense"},
      ],
    },
    {
      'img': Assets.develup,
      'name': "DevelUp: Jobs & Upskilling",
      'description':
          "AI-powered job search and professional upskilling platform.",
      'links': [],
    },
    {
      'img': Assets.placeholder,
      'name': "Firstock (Trading App POC)",
      'description':
          "Real-time trading application with WebSocket & custom charts.",
      'links': [],
    },
    {
      'img': Assets.placeholder,
      'name': "Watscooking",
      'description': "Food recipe discovery and meal planning app.",
      'links': [],
    },
    {
      'img': Assets.placeholder,
      'name': "CBI Service",
      'description': "E-Commerce Food Delivery mobile application.",
      'links': [],
    },
    {
      'img': Assets.placeholder,
      'name': "Klimb",
      'description': "E-Learning Platform by OLA - Unpublished.",
      'links': [],
    },
  ];

  // ─────────────────────────────────────────────
  //  Education
  // ─────────────────────────────────────────────
  static const List<Map<String, dynamic>> education = [
    {
      'course': "Bachelor of Computer Applications (BCA)",
      'batch': "2018 – 2021",
      'college': "Apollo Arts and Science College, Chennai",
      'img': Assets.apollo,
    },
    {
      'course': "Master of Computer Applications (MCA) — Distance Education",
      'batch': "2021 – 2023",
      'college': "Annamalai University – DDE",
      'img': Assets.au,
    },
  ];
}
