// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/services/news_services.dart';
// import 'package:news_app/widgets/news_item.dart';
//
// import '../models/article_model.dart';
//
// class NewsItemListView extends StatefulWidget {
//   const NewsItemListView({
//     super.key,
//   });
//
//   @override
//   State<NewsItemListView> createState() => _NewsItemListViewState();
// }
//
// class _NewsItemListViewState extends State<NewsItemListView> {
//   List<ArticleModel> articles = [];
//
//   bool isLoading = true;
//
//   @override
//   void initState() {
//     super.initState();
//     getGenralNews();
//   }
//
//   Future<void> getGenralNews() async {
//     articles = await NewsServices(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//   }
//   @override
//   Widget build(BuildContext context) {
//     return isLoading ?
//     const SliverToBoxAdapter(child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         SizedBox(height: 300,),
//         CircularProgressIndicator(color: Colors.black,),
//       ],
//     )) : SliverList(
//       delegate: SliverChildBuilderDelegate(
//         childCount: articles.length,
//             (context, index) {
//           return  Padding(
//             padding: EdgeInsets.only(top: 20),
//             child: NewsItem(articleModel: articles[index],),
//           );
//         },
//       ),
//     );
//   }
// }
