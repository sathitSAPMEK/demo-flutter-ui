import 'package:flutter/material.dart';
import 'components/login/index.dart';
import 'components/navigation/index.dart';
import 'components/slider_screen/index.dart';
import 'components/splash_screen/index.dart';
import 'constants/drawer-section.dart';
import 'components/menu/contacts.dart';
import 'components/menu/dashboard.dart';
import 'components/menu/events.dart';
import 'components/drawer/my_drawer_header.dart';
import 'components/menu/notes.dart';
import 'components/menu/notifications.dart';
import 'components/menu/privacy_policy.dart';
import 'components/menu/send_feedback.dart';
import 'components/menu/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Basic UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashLoader(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {super.key, required this.title, required this.disabled_app_bar});
  final String title;
  final bool disabled_app_bar;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentPage = DrawerSections.dashboard;

  dynamic setContainer() {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = const DashboardPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = const ContactsPage();
    } else if (currentPage == DrawerSections.events) {
      container = const EventsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = const NotesPage();
    } else if (currentPage == DrawerSections.settings) {
      container = const SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = const NotificationsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = const PrivacyPolicyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = const SendFeedbackPage();
    } else if (currentPage == DrawerSections.slider_screen) {
      container = const SliderScreen();
    } else if (currentPage == DrawerSections.navigation_bar) {
      container = const Navigation();
    } else if (currentPage == DrawerSections.login) {
      container = const LoginPage();
    } else {
      throw Exception('current page is not found => Current: ${currentPage}');
    }
    return container;
  }

  DrawerSections setDrawerSection(id) {
    if (id == 1) {
      currentPage = DrawerSections.dashboard;
    } else if (id == 2) {
      currentPage = DrawerSections.contacts;
    } else if (id == 3) {
      currentPage = DrawerSections.events;
    } else if (id == 4) {
      currentPage = DrawerSections.notes;
    } else if (id == 5) {
      currentPage = DrawerSections.settings;
    } else if (id == 6) {
      currentPage = DrawerSections.notifications;
    } else if (id == 7) {
      currentPage = DrawerSections.privacy_policy;
    } else if (id == 8) {
      currentPage = DrawerSections.send_feedback;
    } else if (id == 9) {
      currentPage = DrawerSections.slider_screen;
    } else if (id == 10) {
      currentPage = DrawerSections.navigation_bar;
    } else if (id == 11) {
      currentPage = DrawerSections.login;
    } else {
      throw Exception('err => id not found');
    }
    return currentPage;
  }

  @override
  Widget build(BuildContext context) {
    var container;

    return Scaffold(
      appBar: widget.disabled_app_bar == true
          ? AppBar(
              backgroundColor: Color.fromARGB(255, 68, 218, 54),
              title: Text(widget.title),
            )
          : null,
      body: setContainer(),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              MyDrawerList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          menuItem(1, 'Dashboard', Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, 'Contacts', Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, 'Events', Icons.event,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, 'Notes', Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          menuItem(5, 'Settings', Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(6, 'Notifications', Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          menuItem(7, 'Privacy policy', Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(8, 'Send feedback', Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
          menuItem(9, 'Slider Screen', Icons.slideshow,
              currentPage == DrawerSections.slider_screen ? true : false),
          menuItem(10, 'Navigation Bar', Icons.navigation_outlined,
              currentPage == DrawerSections.navigation_bar ? true : false),
          menuItem(11, 'Login', Icons.login_outlined,
              currentPage == DrawerSections.login ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: (() {
          Navigator.pop(context);
          setState(() {
            currentPage = setDrawerSection(id);
          });
        }),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
