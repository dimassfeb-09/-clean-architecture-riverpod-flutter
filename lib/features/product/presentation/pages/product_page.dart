import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:teknikal_2/features/product/presentation/providers/product_provider.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product')),
      body: Consumer(
        builder: (context, ref, child) {
          final data = ref.watch(productProvider);
          return data.when(
            data: (data) {
              if (data.products?.isEmpty ?? true) {
                return const Center(child: Text('No products found'));
              }
              return ListView.builder(
                itemCount: data.products?.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data.products?[index].title ?? ''),
                    subtitle: Text(data.products?[index].brand ?? ''),
                    onTap: () {
                      context.push(
                        'product-detail',
                        extra: data.products?[index].id,
                      );
                    },
                  );
                },
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
