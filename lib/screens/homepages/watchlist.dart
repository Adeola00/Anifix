import 'package:anifix/screens/homepages/watchlist_pages/completed.dart';
import 'package:anifix/screens/homepages/watchlist_pages/watch_list.dart';
import 'package:anifix/screens/homepages/watchlist_pages/watching.dart';
import 'package:anifix/screens/utilities/constants.dart';
import 'package:anifix/screens/utilities/custom__indicator.dart';
import 'package:anifix/screens/utilities/heading_row.dart';
import 'package:flutter/material.dart';

class WatchList extends StatefulWidget {
  const WatchList({super.key});

  @override
  State<WatchList> createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> with TickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      _currentIndex = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const HeadingRow(headingText: "Watchlist"),
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                unselectedLabelColor: Colors.white,
                labelColor: kbuttonColor,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: kwatchListTabTextstyle,
                indicatorColor: Colors.transparent,
                tabs: [
                  SizedBox(
                    height: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Watchlist"),
                        CustomIndicator(
                            color: _currentIndex == 0
                                ? kbuttonColor
                                : Colors.transparent)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Watching"),
                        CustomIndicator(
                            color: _currentIndex == 1
                                ? kbuttonColor
                                : Colors.transparent)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Completed"),
                        CustomIndicator(
                            color: _currentIndex == 2
                                ? kbuttonColor
                                : Colors.transparent)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            WatchListPage(),
            WatchingPage(),
            CompletedPage(),
          ],
        ),
      ),
    );
  }
}
