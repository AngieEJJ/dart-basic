import 'Thing.dart';
import 'asset.dart';

abstract class InTangibleAsset extends Asset {
  int patent;

  InTangibleAsset({
    required super.name,
    required super.price,
    required this.patent,
  });
  }