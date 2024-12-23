import 'package:flutter/material.dart';
import 'package:test_clean_archi/features/articales/domain/entities/artical.dart';

import 'articale_item.dart';

class ArticalesList extends StatelessWidget {
  const ArticalesList({super.key, required this.articales});
  final List<ArticalEntity> articales;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
        padding: const EdgeInsets.all(5),
        itemCount: articales.length,
        itemBuilder: (context, index) => ArticaleItem(
              articalEntity: articales[index],
            ));
  }
}
