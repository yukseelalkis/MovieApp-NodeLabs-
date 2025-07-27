import 'package:lawai/product/utility/constants/enums/lawai.dart';

/// [LawaiExtension] is an extension on the [Lawai] enum.
extension LawaiExtension on Lawai {
  /// [name] is a getter that returns the name of the font.
  String get name {
    switch (this) {
      case Lawai.lawai:
        return 'LawAI';
    }
  }
}
