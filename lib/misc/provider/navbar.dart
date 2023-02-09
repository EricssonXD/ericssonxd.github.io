import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mygithubwebpage/misc/widgets/navigationbar.dart';
part 'navbar.g.dart';

@Riverpod(keepAlive: true)
class NavigationBarIndex extends _$NavigationBarIndex {
  void setByRoute(String route) {
    state = navbarTabs.values.toList().indexOf(route);
  }

  @override
  int build() {
    return 0;
  }
}
