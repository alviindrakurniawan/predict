// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soccer_tab_table_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$soccerTabTableControllerHash() =>
    r'8391fa7b7f4d393599b31ce33e21c8b65827c865';

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

abstract class _$SoccerTabTableController
    extends BuildlessAutoDisposeAsyncNotifier<SoccerStandingsResponse> {
  late final String leagueId;

  FutureOr<SoccerStandingsResponse> build(
    String leagueId,
  );
}

/// See also [SoccerTabTableController].
@ProviderFor(SoccerTabTableController)
const soccerTabTableControllerProvider = SoccerTabTableControllerFamily();

/// See also [SoccerTabTableController].
class SoccerTabTableControllerFamily
    extends Family<AsyncValue<SoccerStandingsResponse>> {
  /// See also [SoccerTabTableController].
  const SoccerTabTableControllerFamily();

  /// See also [SoccerTabTableController].
  SoccerTabTableControllerProvider call(
    String leagueId,
  ) {
    return SoccerTabTableControllerProvider(
      leagueId,
    );
  }

  @override
  SoccerTabTableControllerProvider getProviderOverride(
    covariant SoccerTabTableControllerProvider provider,
  ) {
    return call(
      provider.leagueId,
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
  String? get name => r'soccerTabTableControllerProvider';
}

/// See also [SoccerTabTableController].
class SoccerTabTableControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SoccerTabTableController,
        SoccerStandingsResponse> {
  /// See also [SoccerTabTableController].
  SoccerTabTableControllerProvider(
    String leagueId,
  ) : this._internal(
          () => SoccerTabTableController()..leagueId = leagueId,
          from: soccerTabTableControllerProvider,
          name: r'soccerTabTableControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$soccerTabTableControllerHash,
          dependencies: SoccerTabTableControllerFamily._dependencies,
          allTransitiveDependencies:
              SoccerTabTableControllerFamily._allTransitiveDependencies,
          leagueId: leagueId,
        );

  SoccerTabTableControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.leagueId,
  }) : super.internal();

  final String leagueId;

  @override
  FutureOr<SoccerStandingsResponse> runNotifierBuild(
    covariant SoccerTabTableController notifier,
  ) {
    return notifier.build(
      leagueId,
    );
  }

  @override
  Override overrideWith(SoccerTabTableController Function() create) {
    return ProviderOverride(
      origin: this,
      override: SoccerTabTableControllerProvider._internal(
        () => create()..leagueId = leagueId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        leagueId: leagueId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SoccerTabTableController,
      SoccerStandingsResponse> createElement() {
    return _SoccerTabTableControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SoccerTabTableControllerProvider &&
        other.leagueId == leagueId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, leagueId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SoccerTabTableControllerRef
    on AutoDisposeAsyncNotifierProviderRef<SoccerStandingsResponse> {
  /// The parameter `leagueId` of this provider.
  String get leagueId;
}

class _SoccerTabTableControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SoccerTabTableController,
        SoccerStandingsResponse> with SoccerTabTableControllerRef {
  _SoccerTabTableControllerProviderElement(super.provider);

  @override
  String get leagueId => (origin as SoccerTabTableControllerProvider).leagueId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
