import 'package:flutter/material.dart';
import 'package:test_clean_archi/features/articales/domain/entities/artical.dart';

class ArticaleItem extends StatelessWidget {
  const ArticaleItem({super.key, required this.articalEntity});
  final ArticalEntity articalEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.green.shade100),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.network(
              // articalEntity.url ??
                  "https://th.bing.com/th/id/OIP.Z2haWvW5e8SvzoUKTQ1dIAAAAA?w=241&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Text(
                  articalEntity.title ?? "",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  articalEntity.description ?? "",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
