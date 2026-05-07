import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teknikal_2/features/product/presentation/providers/product_provider.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Detail')),
      body: Consumer(
        builder: (context, ref, child) {
          final data = ref.watch(productDetailProvider(id));
          return data.when(
            data: (data) {
              return Column(
                children: [Text(data.title ?? ''), Text(data.brand ?? '')],
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(child: Text(error.toString())),
          );
        },
      ),
    );
  }
}
