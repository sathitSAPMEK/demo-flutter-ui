import 'package:flutter/material.dart';

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
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentPage = DrawerSections.dashboard;
  @override
  Widget build(BuildContext context) {
    var container;

    if (currentPage == DrawerSections.dashboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = ContactsPage();
    } else if (currentPage == DrawerSections.events) {
      container = EventsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = NotesPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = NotificationsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = SendFeedbackPage();
    } else if (currentPage == DrawerSections.slider_screen) {
      container = SliderScreen();
    } else {
      container = SliderScreen();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(widget.title),
      ),
      body: container,
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
            } else {
              currentPage = DrawerSections.dashboard;
            }
          });
        }),
        child: Padding(
          padding: EdgeInsets.all(15.0),
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
                    style: TextStyle(
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
