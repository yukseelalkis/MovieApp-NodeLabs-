/// This file contains the localization key enum for named localization keys.
enum LocalizationNamedParamKey {
  /// [name] is the key for the user's name.
  name(1),

  /// [surname] is the key for the user's surname.
  surname(2),

  /// [email] is the key for the user's email.
  email(4),

  /// [plan] is the key for the user's plan.
  plan(8);

  /// Constructor
  const LocalizationNamedParamKey(this.value);

  /// [value] is the method that returns the value of the localization key.
  final int value;
}
