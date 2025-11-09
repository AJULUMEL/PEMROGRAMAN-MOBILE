import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/product_card.dart';
import '../widgets/footer_widget.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar Premium Quality',
      price: 15000,
      imageUrl: 'https://images.unsplash.com/photo-1559056199-641a0ac8b55e?w=400',
      stock: 50,
      rating: 4.8,
    ),
    Item(
      name: 'Himalayan Pink Salt',
      price: 25000,
      imageUrl: 'https://images.unsplash.com/photo-1608198093002-ad4e005484ec?w=400',
      stock: 30,
      rating: 4.9,
    ),
    Item(
      name: 'Organic Brown Sugar',
      price: 20000,
      imageUrl: 'https://images.unsplash.com/photo-1587735243475-46d730e7dc4e?w=400',
      stock: 25,
      rating: 4.7,
    ),
    Item(
      name: 'Sea Salt Fine',
      price: 18000,
      imageUrl: 'https://images.unsplash.com/photo-1598485684949-639f2c2d0688?w=400',
      stock: 40,
      rating: 4.6,
    ),
    Item(
      name: 'Coconut Sugar',
      price: 35000,
      imageUrl: 'https://images.unsplash.com/photo-1516594798947-e65505dbb29d?w=400',
      stock: 15,
      rating: 4.9,
    ),
    Item(
      name: 'Rock Salt',
      price: 12000,
      imageUrl: 'https://images.unsplash.com/photo-1607672632458-9eb56696346b?w=400',
      stock: 60,
      rating: 4.5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Belanja Products',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[700],
        elevation: 2,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ProductCard(
                  item: item,
                  onTap: () {
                    context.go('/item', extra: item);
                  },
                );
              },
            ),
          ),
          const FooterWidget(),
        ],
      ),
    );
  }
}

