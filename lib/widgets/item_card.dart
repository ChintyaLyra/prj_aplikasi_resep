import 'package:flutter/material.dart';
import 'package:prj_aplikasi_resep/models/resep.dart';
import 'package:prj_aplikasi_resep/screens/detail_screen.dart';
//import 'package:prj_aplikasi_resep/widgets/item_card.dart';

class ItemCard extends StatelessWidget {
  final Resep resep;

  const ItemCard({super.key, required this.resep});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(resep: resep)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(4),
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  resep.imageAsset,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Text(
                resep.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 16, bottom: 8),
            //   child: Text(
            //     resep.bumbu,
            //     style: TextStyle(fontSize: 12),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}