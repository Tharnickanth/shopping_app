import 'package:flutter/material.dart';
import 'package:shopping_app/global_variable.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Card View",
        ),
      ),
      body: ListView.builder(
        itemCount: card.length,
        itemBuilder: (context, index) {
          final cartItem = card[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(cartItem['imageUrl'] as String),
              radius: 30,
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                )),
            title: Text(
              cartItem['title'].toString(),
            ),
            subtitle: Text(
              'Size ${cartItem['sizes'].toString()}',
            ),
          );
        },
      ),
    );
  }
}
