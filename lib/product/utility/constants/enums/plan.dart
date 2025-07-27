/// This file contains the plan enum which is used to define the plan type.
enum Plan {
  /// Free plan
  free(1),

  /// Premium plan
  premium(2);

  /// Constructor
  const Plan(this.value);

  /// [value] is a method that returns the value of the plan.
  final int value;

  /// [name] is a method that returns the name of the plan.
  String get name {
    switch (this) {
      case Plan.free:
        return 'Free';
      case Plan.premium:
        return 'Premium';
    }
  }
}
