import 'package:go_router/go_router.dart';
import 'package:teknikal_2/features/auth/presentation/pages/login_page.dart';
import 'package:teknikal_2/features/product/presentation/pages/product_detail_page.dart';
import 'package:teknikal_2/features/product/presentation/pages/product_page.dart';

class AppRouters {
  static final router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(
        path: '/product',
        builder: (context, state) => const ProductPage(),
      ),
      GoRoute(
        path: '/product-detail',
        builder: (context, state) => ProductDetailPage(id: state.extra as int),
      ),
    ],
  );
}
