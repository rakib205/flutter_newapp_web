import 'package:flutter/material.dart';
import 'package:flutter_newapp_web/datamodel/tabBarModel.dart';
import 'package:flutter/foundation.dart';
import 'bottomnavmodel.dart';
import 'package:flutter_newapp_web/util/appUtil.dart';

class TabBarData extends ChangeNotifier {

  List<TabBarModel> _tabData = [
    TabBarModel(
        tabTitle: 'Latest',
        isSelected: true,
        newsUrl:
            'https://newsapi.org/v2/top-headlines?country=ca&apiKey=$newsApiKey'),
    TabBarModel(
        tabTitle: 'Business',
        isSelected: false,
        newsUrl: getNewsUrl('Business')),

    TabBarModel(
        tabTitle: 'Entertainment',
        isSelected: false,
        newsUrl: getNewsUrl('Entertainment')),
    TabBarModel(
        tabTitle: 'Sports',
        isSelected: false,
        newsUrl:getNewsUrl('Sports')),
    TabBarModel(
        tabTitle: 'Technology',
        isSelected: false,
        newsUrl:getNewsUrl('Technology')),
    TabBarModel(
        tabTitle: 'Health',
        isSelected: false,
        newsUrl:getNewsUrl('Health')),
    TabBarModel(
        tabTitle: 'Science',
        isSelected: false,
        newsUrl:getNewsUrl('Science')),
  ];

  List<BottomNavModel> bottomItems = [
    BottomNavModel(itemTitle: 'home', itemIcon: Icons.home),
    BottomNavModel(itemTitle: 'search', itemIcon: Icons.search),
    BottomNavModel(itemTitle: 'bookmark', itemIcon: Icons.bookmark),
  ];




  int bottomIndex = 0;

  int get bottomBarIndex {
    return bottomIndex;
  }

  void setBottomBarIndex({index}) {
    bottomIndex = index;
    notifyListeners();
  }

  int activeIndex = 0;
  void setTabIndex({index}) {
    activeIndex = index;
    notifyListeners();
  }

  int get currentTabIndex {
    return activeIndex;
  }

  int get tabIndexCount {
    return _tabData.length;
  }

  TabBarModel tabBarModel({index}) {
    return _tabData[index];
  }
}
