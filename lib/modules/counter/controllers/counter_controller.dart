import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_controller.g.dart';

@riverpod
class CounterController extends _$CounterController {
  @override
  int build(int playerId) {
    return 50;
  }

  void onIncrement() {
    state += 1;
  }

  void onDecrement() {
    if (state == 0) return;
    state -= 1;
  }

  void onLongIncrement() {
    state += 10;
  }

  void onLongDecrement() {
    if (state < 10) return;
    state -= 10;
  }

  void reset() {
    state = 50;
  }
}
