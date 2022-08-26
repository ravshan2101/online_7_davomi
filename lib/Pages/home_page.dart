import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//       body: CustomScrollView(slivers: [
//         const SliverAppBar(
//           expandedHeight: 220,
//           floating: true,
//           pinned: true,
//           snap: true,
//           elevation: 50,
//           backgroundColor: Colors.grey,
//           flexibleSpace: FlexibleSpaceBar(
//             centerTitle: true,
//             title: Text("Pdp Online"),
//             background: Image(
//               image: NetworkImage(
//                   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL4UUZwsJCRqTa3TJUmea59L3zZb5Eorwmc_V98GSE&s'),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         SliverList(delegate: SliverChildListDelegate(_buildList(50)))
//       ]),
//     );
//   }
// }
// _buildList(int count) {
//   List<Widget> items = [];
//   for (int i = 0; i < count; i++) {
//     items.add(_itemList(i));
//   }
//   return items;
// }
// Widget _itemList(int i) {
//   return Container(
//     height: 50,
//     child: Text(
//       "Item ${i.toString()}",
//       style: TextStyle(fontSize: 20),
//     ),
//   );
// }
      body: Row(
        children: [
          NavigationRail(
            onDestinationSelected: (value) {
              setState(() {
                _selectIndex = value;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: Text("First"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.book),
                label: Text("Second"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: Text("Third"),
              )
            ],
            selectedIndex: _selectIndex,
          ),
          const VerticalDivider(
            thickness: 1,
            width: 1,
          ),
          Expanded(
              child: Center(
            child: Text("selecetIndex: $_selectIndex"),
          ))
        ],
      ),
    );
  }
}
