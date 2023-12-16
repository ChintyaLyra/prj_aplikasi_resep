import 'package:flutter/material.dart';
import 'package:prj_aplikasi_resep/data/resep_data.dart';
import 'package:prj_aplikasi_resep/models/resep.dart';
import 'package:prj_aplikasi_resep/widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MasakYUK!'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: resepList.length,
        itemBuilder: (context, index) {
          Resep resep = resepList[index];
          return ItemCard(resep: resep);
        },
      ),
    );
  }
}