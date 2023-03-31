// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:untitled17/widget/block/bloker-blok.dart';
// import '../Drawerwidet.dart';
// import '../cartBottomNavBar.dart';
//
//
// class CartPage7 extends StatefulWidget {
//   const CartPage7({Key? key}) : super(key: key);
//
//   @override
//   State<CartPage7> createState() => _CartPageState();
// }
//
// class _CartPageState extends State<CartPage7> {
//   int count = 0;
//   @override
//   Widget build(BuildContext context) {
//     var bookmarkBloc = Provider.of<BookmarkBloc>(context);
//     return Scaffold(
//       body: ListView(
//         children: [
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 ListView.builder(
//                   itemCount: bookmarkBloc.items.length,
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       title: Text(bookmarkBloc.items[index].title),
//                       subtitle: Text(bookmarkBloc.items[index].subTitle),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       drawer: Drawerwidet(),
//       bottomNavigationBar: cartBottomNavBar(),
//
//     );
//   }
// }
//
