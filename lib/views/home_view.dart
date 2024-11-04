import 'package:flutter/material.dart';
import 'package:news_app_revision/widgets/horizontal_list_cards_content.dart';
import 'package:news_app_revision/widgets/horizontal_list_view.dart';
import 'package:news_app_revision/widgets/news_list_view.dart';
import 'package:news_app_revision/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),

      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: HorizontalListView()),

              SliverToBoxAdapter(
                child: SizedBox(height: 32,),),

               NewListView(),
          ],
        ),

        // child: Column(
        //   children: [
        //     HorizontalListView(),
        //     SizedBox(height: 30,),
        //     Expanded(child: NewListView()),
        //   ],
        // ),
      ),
    );
  }
}

// child: CustomScrollView(
//           slivers: [

//              SliverToBoxAdapter(child: CategoriesListView()),
             
//              SliverToBoxAdapter(
//               child: SizedBox(
//                 height: 32,
//               ),
//             ),
//             NewListView(),
//           ],
//         ),


// class NewListView extends StatelessWidget {
//   const NewListView({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 20,
//       itemBuilder: (context, index) {
//         return const Padding(
//           padding:  EdgeInsets.only(bottom: 22.0),
//           child:  NewsTile(),
//         ); // Make sure NewsTile is defined
//       },
//     );
//   }
// }
