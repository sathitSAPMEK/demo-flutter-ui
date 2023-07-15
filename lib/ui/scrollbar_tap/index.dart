import 'package:flutter/material.dart';

class ScrollableTab extends StatelessWidget {
  ScrollableTab({super.key});

  List<Tab> tabs = [
    const Tab(child: Text('Teal')),
    const Tab(child: Text('Green')),
    const Tab(child: Text('Blue')),
    const Tab(child: Text('Yellow')),
    const Tab(child: Text('Red')),
    const Tab(child: Text('Orange')),
    const Tab(child: Text('Grey')),
  ];

  List<Widget> tabsContent = [
    Container(color: Colors.teal),
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
    Container(color: Colors.red),
    Container(color: Colors.orange),
    Container(color: Colors.grey),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Scrollable Tab'),
          backgroundColor: Colors.green,
          centerTitle: true,
          brightness: Brightness.dark,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: Center(
              child: TabBar(
                tabs: tabs,
                indicatorColor: Colors.white,
                isScrollable: true,
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: tabsContent,
        ),
      ),
    );
  }
}
