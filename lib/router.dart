import 'package:devcamp_travel_app/imports.dart';

GoRouter appRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: Routes.home.path,
  routes: [
    Routes.home,
  ],
  errorPageBuilder: (context, state) {
    // ignore: avoid_print
    print(state.error);
    return MaterialPage<void>(
      key: state.pageKey,
      child: const Home(),
    );
  },
);
