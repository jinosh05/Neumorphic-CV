import 'package:neumorphic_cv/constants/assets.dart';
import 'package:neumorphic_cv/constants/strings.dart';

class Env {
  // ─────────────────────────────────────────────
  //  Personal Info
  // ─────────────────────────────────────────────
  static const String imageURL = Assets.myPic;
  static const String name = "Jinosh D";
  static const String profession =
      "Flutter Team Lead · Mobile Architect · Full-Stack Developer";
  static const String tagline =
      "Leading cross-platform teams — from architecture to App Store.";
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
Flutter Team Lead with 5+ years of experience architecting and delivering cross-platform applications for Android, iOS, Windows, Linux, and macOS — from a single codebase to production on five platforms simultaneously.

I lead development teams, mentor junior developers, and own the full product lifecycle — from architecture design and code review to App Store and Play Store deployment. My core stack is Flutter & Dart for mobile, web, and desktop, paired with FastAPI (Python) for scalable REST APIs and admin dashboards.

I've driven end-to-end feature delivery across early-stage startups, growing product teams, and freelance engagements — integrating AI capabilities (Gemini APIs), real-time systems (WebSockets, MQTT), and cloud backends (AWS, Firebase) while keeping the codebase clean and maintainable.

What sets me apart is the ability to go beyond the frontend — I define architecture, shape technical strategy, and ship products that reach real users.
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
    "Flutter (Mobile · Web · Desktop · macOS · Linux · Windows)",
    "Dart — BLoC, Cubit, Provider",
    "Team Leadership & Developer Mentorship",
    "MVC & MVVM Architecture",
    "FastAPI (Python) — REST APIs & Admin Dashboards",
    "AWS — Cloud Deployment & Infrastructure",
    "HTMX & Jinja2 — Admin Dashboard UI",
    "Firebase — Auth, Firestore, FCM, Storage",
    "AI Integration — Gemini APIs",
    "Google Maps & Location Services",
    "MySQL · SQLite (sqflite) · Hive · SharedPreferences",
    "WebSocket & MQTT Protocol",
    "Custom Flutter Package Development (pub.dev)",
    "CI/CD Pipelines",
    "Deep Links & Universal Links (iOS & Android)",
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
      'position': "Junior Flutter Developer",
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
• Specialised in iOS-specific Flutter development, ensuring native performance and compatibility.
• Developed two feature-rich E-commerce applications for iOS and Android, published on App Store and Play Store.
• Built an ERP-integrated mobile application for internal business operations.
• Developed a dedicated Delivery Boy application with real-time order tracking.
• Integrated Firebase Analytics (GA4) and coordinated with the SEO team.
""",
      'site': 'https://connectivelinkstechnology.com/',
      'btnTitle': 'CLT',
    },
    {
      "company": "MindOrigin Technologies",
      'logo': Assets.mot,
      'position': "Senior Flutter Developer — Team Lead",
      'duration': "Jul 2023 – Jul 2024",
      'experience': """
• Led a Flutter team of 3 developers for a large-scale real-time trading application targeting Android, iOS, and Web.
• Managed the full feature lifecycle — from planning and design through to delivery.
• Built and published custom Flutter chart packages with specialised candlestick and indicator support.
• Integrated WebSocket and MQTT protocols for live market data streaming.
• Mentored junior developers and established best practices for the Flutter team.
""",
      'site': 'https://mindorigin.in/',
      'btnTitle': 'MOT',
    },
    {
      'company': 'DevelUp Centre of Excellence',
      'logo': Assets.develup,
      'position': 'Senior Flutter Developer — Contract',
      'duration': 'Feb 2025 – Aug 2025',
      'experience': """
• Played a key leadership role in building the Develup mobile application from the ground up.
• Defined overall app architecture and enforced development best practices across the team.
• Implemented AI-powered job search features, onboarding flows, and in-app interactions.
• Ensured successful deployment and performance optimisation on both App Store and Play Store.
""",
      'site': 'https://develup.com/',
      'btnTitle': 'Develup',
    },
    {
      'company': 'Fellow Founder · Faithnet Technologies',
      'logo': Assets.fellowFounder,
      'position': 'Lead Full-Stack Developer — Freelance',
      'duration': 'Jul 2024 – Present',
      'experience': """
• Architected and led end-to-end development of the Fellow Founder mobile app and its FastAPI backend, deployed on AWS.
• Designed the admin dashboard using HTMX and Jinja2 Templates.
• Built an AI-driven networking platform leveraging Gemini APIs.
• Managed full App Store and Google Play deployment pipeline for a seamless cross-platform launch.
• Collaborated directly with founders to shape product direction and technical strategy.
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
  //  Open Source — pub.dev Packages
  // ─────────────────────────────────────────────
  static const List<Map<String, String>> openSourcePackages = [
    {
      'name': 'photofilters',
      'url': 'https://pub.dev/packages/photofilters',
    },
    {
      'name': 'speech_to_text',
      'url': 'https://pub.dev/packages/speech_to_text',
    },
    {
      'name': 'fancy_bottom_navigation_plus',
      'url': 'https://pub.dev/packages/fancy_bottom_navigation_plus',
    },
    {
      'name': 'sizer_pro',
      'url': 'https://pub.dev/packages/sizer_pro',
    },
    {
      'name': 'flutter_neumorphic',
      'url': 'https://pub.dev/packages/flutter_neumorphic',
    },
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
      'img': Assets.hiLightMedia,
      'name': "Hi-Light Media",
      'description':
          "High-performance digital signage and media playback application built for cross-platform devices.",
      'links': [],
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
              "https://github.com/jinosh05/Al-Quran-Multilingual-Desktop/releases/download/1.0.42/Al-Quran-Multilingual-Setup.exe",
        },
        {
          'icon': Assets.linux,
          'url':
              "https://github.com/jinosh05/Al-Quran-Multilingual-Desktop/releases/download/1.0.42/Al-Quran-Multilingual-x86_64.AppImage",
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
      'img': Assets.firstock,
      'name': "Firstock - Trade & Invest",
      'description':
          "A modern trading and investment platform for Stocks, F&O, and Mutual Funds with real-time data and advanced charting.",
      'links': [
        {
          'icon': Assets.appstore,
          'url':
              'https://apps.apple.com/in/app/firstock-trade-invest/id6746480444',
        },
        {
          'icon': Assets.playstore,
          'url':
              'https://play.google.com/store/apps/details?id=in.firstock.mobile',
        },
      ],
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
  //  YouTube Channel
  // ─────────────────────────────────────────────
  static const Map<String, String> youtubeChannel = {
    'name': 'Tamizh Aasan',
    'subtitle': 'AI-Built Tamil Educational Channel',
    'tools': 'Flux-2 Images · Python Pillow · Indic TTS & F5 Voice · FFmpeg',
    'url': 'https://www.youtube.com/@TamizhAasan',
  };

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
