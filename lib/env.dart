import 'package:neumorphic_cv/constants/assets.dart';
import 'package:neumorphic_cv/constants/strings.dart';

class Env {
  // ─────────────────────────────────────────────
  //  Personal Info
  // ─────────────────────────────────────────────
  static const String imageURL = Assets.myPic;
  static const String name = "Jinosh D";
  static const String dob = "09/09/2000";
  static const String profession =
      "Flutter Team Lead · Mobile Architect · Full-Stack Developer";
  static const String tagline =
      "Leading cross-platform teams — from architecture to App Store.";
  static const String portfolio = "https://jinosh.netlify.app/";
  static const String address =
      "Tondiarpet, Chennai – 600081\nTamil Nadu, India";

  // ─────────────────────────────────────────────
  //  Contact
  // ─────────────────────────────────────────────
  static const String mobile = "+918870358783";
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
Flutter Team Lead, Mobile Architect and CTO with nearly 5 years of experience and 13+ apps shipped across the Google Play Store and Apple App Store. I specialize in defining robust app architectures, leading cross-platform teams and taking products from first sketch to store release. I remain hands-on across architecture and implementation, and I care deeply about mentoring developers, clean architecture and long-term maintainability.

Key Competencies & Leadership Highlights:

* End-to-End Ownership: Worked across 18+ projects in e-commerce, fintech, education, networking, event booking and gaming — owning planning, architecture, development, testing, release and post-launch support.

* Team Leadership & Mentorship: Led a Flutter team of 3 on a large-scale real-time trading platform and mentored junior developers while establishing Bloc/Riverpod, MVC/MVVM and code-review standards.

* Cross-Platform Delivery: Shipped production apps for Android, iOS, web, Windows, Linux and macOS — including the Al Quran app with 90+ languages across 5 platforms and the Jigsaw game on Play Store and desktop.

* Current Focus: As CTO and App Developer at Faithnet Technologies, I built the Fellow Founder networking platform from scratch — Flutter, FastAPI and AWS — with AI-powered visiting-card scanning, HTMX/Jinja2 admin dashboards and full CI/CD release pipelines.

* Modern Workflow: I use unit and integration testing, CI/CD and AI-assisted development to move from idea to release faster while maintaining quality, and I maintain open-source Flutter packages on pub.dev.
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
    "Flutter & Dart — Mobile, Web & Desktop",
    "State Management — BLoC, Riverpod & Provider",
    "Architecture — MVC & MVVM",
    "Team Leadership & Mentorship",
    "Backend — FastAPI, HTMX, Jinja2 & REST APIs",
    "Cloud & CI/CD — AWS Deployment Pipelines",
    "Data — Firebase, MySQL, PostgreSQL, SQLite, Hive & Isar",
    "Payments — Razorpay, Stripe, PayPal & CCAvenue",
    "Real-Time — WebSocket & MQTT",
    "Integrations — Google Maps, ML Kit, Charts, Bluetooth & POS",
    "Testing — Unit & Integration",
    "Publishing — App Store & Google Play",
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
      'position': "Junior Flutter Developer",
      'duration': "Jan 2021 – Jun 2022",
      'experience': """
• Built and iterated on multiple UI screens from Figma designs using Flutter.
• Integrated Firebase services (Authentication, Firestore, Cloud Messaging) and Google Maps for location-aware features.
• Developed a fully functional E-commerce Food Delivery application end-to-end.
• Implemented cart management, order tracking, and payment gateway integration.
• Successfully published the app on the Google Play Store.
• Collaborated with the senior team and maintained app performance based on user feedback.
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
      'company': 'Faithnet Technologies',
      'logo': Assets.fellowFounder,
      'position': 'CTO and App Developer',
      'duration': 'Jul 2024 – Present',
      'experience': """
• Architected and led end-to-end development of the Fellow Founder mobile app and its FastAPI backend, deployed on AWS.
• Designed the admin dashboard using HTMX and Jinja2 Templates.
• Built an AI-driven networking platform leveraging Gemini APIs.
• Managed full App Store and Google Play deployment pipeline for a seamless cross-platform launch.
• Established unit and integration testing practices and adopted AI agents to accelerate development and deployment.
• Collaborated directly with founders to shape product direction and technical strategy.
""",
      'site': 'https://www.fellowfounder.in/',
      'btnTitle': 'Fellow Founder',
    },
  ];

  // ─────────────────────────────────────────────
  //  Languages Known
  // ─────────────────────────────────────────────
  static const List<String> languages = ["Tamil", "English", "Hindi"];

  // ─────────────────────────────────────────────
  //  Open Source — Packages
  // ─────────────────────────────────────────────
  static const List<Map<String, String>> openSourcePackages = [
    {'name': 'photofilters', 'url': 'https://pub.dev/packages/photofilters'},
    {
      'name': 'speech_to_text',
      'url': 'https://pub.dev/packages/speech_to_text',
    },
    {
      'name': 'fancy_bottom_navigation_plus',
      'url': 'https://pub.dev/packages/fancy_bottom_navigation_plus',
    },
    {
      'name': 'qr_flutter_plus',
      'url': 'https://pub.dev/packages/qr_flutter_plus',
    },
    {
      'name': 'flutter_neumorphic',
      'url': 'https://github.com/jinosh05/Flutter-Neumorphic',
    },
  ];

  // ─────────────────────────────────────────────
  //  Portfolio — Apps & Projects
  // ─────────────────────────────────────────────
  static const List<Map<String, dynamic>> appsInfo = [
    {
      'img': Assets.fellowFounder,
      'name': "Fellow Founder",
      'description':
          "A complete networking platform for startup founders with AI-powered visiting-card scanning.",
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
          "High-performance digital signage and media playback application built for low-spec TVs.",
      'links': [],
    },
    {
      'img': Assets.quran,
      'name': "Al Quran Multilingual Pro",
      'description':
          "A comprehensive multilingual Quran app across 5 platforms with support for 90+ languages.",
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
      'img': Assets.jigsaw,
      'name': "Jigsaw — Desktop Game",
      'description':
          "A calm, level-based jigsaw puzzle game with accounts, progress sync and leaderboard, shipping native builds for Linux, Windows and macOS.",
      'links': [
        {
          'icon': Assets.linux,
          'url':
              "https://github.com/jinosh05/jigsaw-desktop/releases/latest/download/Jigsaw-linux-x64.tar.gz",
        },
        {
          'icon': Assets.windows,
          'url':
              "https://github.com/jinosh05/jigsaw-desktop/releases/latest/download/Jigsaw-windows-x64.zip",
        },
        {
          'icon': Assets.macos,
          'url':
              "https://github.com/jinosh05/jigsaw-desktop/releases/latest/download/Jigsaw-macos-arm64.dmg",
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
      'img': Assets.fundae,
      'name': "Fundae: Family Event Booking",
      'description': "Family event booking app for children's events in India.",
      'links': [
        {
          'icon': Assets.appstore,
          'url':
              "https://apps.apple.com/us/app/fundae-family-event-booking/id6811892706",
        },
        {
          'icon': Assets.playstore,
          'url':
              "https://play.google.com/store/apps/details?id=com.fundae.app&hl=en_IN",
        },
      ],
    },
    {
      'img': Assets.cg,
      'name': "Cake Gallery",
      'description':
          "Cakes, gifts & flowers delivery e-commerce app built with Material UI 3.",
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
      'img': Assets.placeholder,
      'name': "Warehouse Management & Delivery",
      'description':
          "Warehouse count management with printable PDF invoices and Bluetooth POS printing, plus a dedicated delivery app with real-time order tracking.",
      'links': [],
    },
    {
      'img': Assets.placeholder,
      'name': "Webapp Ecommerce",
      'description': "Fully responsive e-commerce web app built with Flutter.",
      'links': [],
    },
    {
      'img': Assets.b2b,
      'name': "B2B Purchase",
      'description': "E-magazine app built exclusively for B2B businesses.",
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
      'description': "Home food booking e-commerce app.",
      'links': [],
    },
    {
      'img': Assets.placeholder,
      'name': "CBI Service",
      'description':
          "E-commerce food booking app with dedicated vendor and delivery boy apps.",
      'links': [],
    },
    {
      'img': Assets.placeholder,
      'name': "Doctor Booking",
      'description':
          "Doctor appointment booking app built with Flutter and Firebase.",
      'links': [],
    },
    {
      'img': Assets.placeholder,
      'name': "Klimb",
      'description':
          "Educational app for handling question-and-answer sessions — unreleased.",
      'links': [],
    },
  ];

  // ─────────────────────────────────────────────
  //  YouTube Channel
  // ─────────────────────────────────────────────
  static const Map<String, String> youtubeChannel = {
    'name': 'Tamizh Aasan',
    'subtitle': 'AI-Built Tamil Educational Channel',
    'tools': 'Flux-2 Images · Python Pillow · Omnivoice · FFmpeg',
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
