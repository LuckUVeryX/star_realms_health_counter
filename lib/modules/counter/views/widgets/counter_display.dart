import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:star_realms_health_counter/modules/counter/counter.dart';
import 'package:star_realms_health_counter/utils/context_extensions.dart';

class CounterDisplay extends ConsumerWidget {
  const CounterDisplay({
    required this.playerId,
    super.key,
  });

  final int playerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterControllerProvider(playerId));
    final notifier = ref.watch(counterControllerProvider(playerId).notifier);

    return Stack(
      alignment: Alignment.center,
      children: [
        Text(
          count.toString(),
          textAlign: TextAlign.center,
          style: context.textTheme.displayLarge,
        ),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: notifier.onDecrement,
                onLongPress: notifier.onLongDecrement,
                child: const Center(
                  child: Icon(Icons.remove),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: notifier.onIncrement,
                onLongPress: notifier.onLongIncrement,
                child: const Center(
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
