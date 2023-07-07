import 'package:intl/intl.dart';

class HomeModel {
  final String todayDate =
      'Today, ' + DateFormat('MMMM dd').format(DateTime.now()) + 'rd';

  final String treadingHeadLine = "Trending";
  final String latestHeadLine = "Latest";

  List<String> categories = [
    "Item 1",
    "Item 1",
    "Item 1",
    "Item 1",
    "Item 1",
    "Item 1",
    "Item 1"
  ];

  final List<Map<String, String>> trendingNews = [
    {
      "newsImageUrl":
          "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA18CE5g.img?w=1920&h=1080&q=60&m=2&f=jpg",
      "newsTitle":
          "Al-Nassr announce arrival of Portuguese manager for Ronaldo",
      "newsaCategory": "Football"
    },
    {
      "newsImageUrl":
          "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1dtSFG.img?w=800&h=415&q=60&m=2&f=jpg",
      "newsTitle": "The most iconic cars in cinematic and television history",
      "newsaCategory": "Cars"
    },
    {
      "newsImageUrl":
          "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1dtSFG.img?w=800&h=415&q=60&m=2&f=jpg",
      "newsTitle": "10 Animals People Wish Were Pet Material But Sadly Aren't",
      "newsaCategory": "Animals"
    }
  ];

  final List<Map<String, String>> latestNews = [
    {
      "newsImageUrl":
          "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA18CE5g.img?w=1920&h=1080&q=60&m=2&f=jpg",
      "newsTitle":
          "Al-Nassr announce arrival of Portuguese manager for Ronaldo",
      "newsCategory": "Football",
      "time": "14h ago"
    },
    {
      "newsImageUrl":
          "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1dtSFG.img?w=800&h=415&q=60&m=2&f=jpg",
      "newsTitle": "The most iconic cars in cinematic and television history",
      "newsCategory": "Cars",
      "time": "12h ago"
    },
    {
      "newsImageUrl":
          "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1dtSFG.img?w=800&h=415&q=60&m=2&f=jpg",
      "newsTitle": "10 Animals People Wish Were Pet Material But Sadly Aren't",
      "newsCategory": "Animals",
      "time": "10h ago"
    }
  ];
}
