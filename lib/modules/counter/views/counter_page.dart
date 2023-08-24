import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:star_realms_health_counter/modules/counter/counter.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(child: CounterDisplay(playerId: 0)),
          _ResetDivider(),
          Expanded(child: CounterDisplay(playerId: 1)),
        ],
      ),
    );
  }
}

class _ResetDivider extends ConsumerWidget {
  const _ResetDivider();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Expanded(child: VerticalDivider()),
        IconButton(
          onPressed: () {
            ref.read(counterControllerProvider(0).notifier).reset();
            ref.read(counterControllerProvider(1).notifier).reset();
          },
          icon: const Icon(Icons.replay),
        ),
        const Expanded(child: VerticalDivider()),
      ],
    );
  }
}
