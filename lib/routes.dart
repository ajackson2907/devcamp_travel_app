import 'package:devcamp_travel_app/imports.dart';

class Routes {
  static final home = GoRoute(
    path: '/',
    pageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const Home(),
    ),
    routes: [
      details,
    ],
  );

  static final details = GoRoute(
    path: 'details',
    pageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: CityDetails(
        city: state.extra! as Data,
      ),
    ),
  );
}
