// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterControllerHash() => r'757b1568beb0ac40808c50caf732ab336d47a50d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$CounterController extends BuildlessAutoDisposeNotifier<int> {
  late final int playerId;

  int build(
    int playerId,
  );
}

/// See also [CounterController].
@ProviderFor(CounterController)
const counterControllerProvider = CounterControllerFamily();

/// See also [CounterController].
class CounterControllerFamily extends Family<int> {
  /// See also [CounterController].
  const CounterControllerFamily();

  /// See also [CounterController].
  CounterControllerProvider call(
    int playerId,
  ) {
    return CounterControllerProvider(
      playerId,
    );
  }

  @override
  CounterControllerProvider getProviderOverride(
    covariant CounterControllerProvider provider,
  ) {
    return call(
      provider.playerId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'counterControllerProvider';
}

/// See also [CounterController].
class CounterControllerProvider
    extends AutoDisposeNotifierProviderImpl<CounterController, int> {
  /// See also [CounterController].
  CounterControllerProvider(
    this.playerId,
  ) : super.internal(
          () => CounterController()..playerId = playerId,
          from: counterControllerProvider,
          name: r'counterControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$counterControllerHash,
          dependencies: CounterControllerFamily._dependencies,
          allTransitiveDependencies:
              CounterControllerFamily._allTransitiveDependencies,
        );

  final int playerId;

  @override
  bool operator ==(Object other) {
    return other is CounterControllerProvider && other.playerId == playerId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, playerId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  int runNotifierBuild(
    covariant CounterController notifier,
  ) {
    return notifier.build(
      playerId,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
