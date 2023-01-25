import 'package:go_router/go_router.dart';

import '../pages/page_a.dart';
import '../pages/page_b.dart';
import '../pages/page_c.dart';

final router = GoRouter(
  routes: [
    // アプリ起動時の画面
    GoRoute(
      path: '/',
      builder: (context, state) {
        // エキストラ（追加）パラメータで受け取る
        final receivedText = state.extra as String?;
        return PageA(
          receivedText: receivedText,
        );
      },
      routes: [
        // 画面Aのサブページ
        GoRoute(
          path: 'b/:text',
          builder: (context, state) {
            // 動的リンクでパラメータを受け取る
            final receivedText = state.params['text'];
            return PageB(
              receivedText: receivedText,
            );
          },
        ),
      ],
    ),
    // 画面Aと同じ階層のルート
    GoRoute(
      path: '/c',
      builder: (context, state) {
        // クエリパラメータでパラメータを受け取る
        final receivedText = state.queryParams['text'];
        return PageC(
          receivedText: receivedText,
        );
      },
    ),
  ],
);
