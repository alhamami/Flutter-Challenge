import 'package:intl/intl.dart';

class HomeModel {
  final String todayDate =
      'Today, ' + DateFormat('MMMM dd').format(DateTime.now()) + 'rd';
  List<String> categories = [
    "Item 1",
    "Item 1",
    "Item 1",
    "Item 1",
    "Item 1",
    "Item 1",
    "Item 1"
  ];

  final String TreadingHeadLine = "Trending";

  final List<Map<String, String>> trendingNews = [
    {
      "imageUrl":
          "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA18CE5g.img?w=1920&h=1080&q=60&m=2&f=jpg",
      "newsTitle":
          "Al-Nassr announce arrival of Portuguese manager for Ronaldo",
      "category": "Football"
    },
    {
      "imageUrl":
          "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1dtSFG.img?w=800&h=415&q=60&m=2&f=jpg",
      "newsTitle": "The most iconic cars in cinematic and television history",
      "category": "Cars"
    },
    {
      "imageUrl":
          "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1dtSFG.img?w=800&h=415&q=60&m=2&f=jpg",
      "newsTitle": "10 Animals People Wish Were Pet Material But Sadly Aren't",
      "category": "Animals"
    }
  ];
}
