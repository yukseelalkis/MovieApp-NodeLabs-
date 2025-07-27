/// CacheAllowListEnum is an enum class that contains the list of keys that are allowed to be cached.
enum CacheAllowListEnum {
  /// [rememberMe] is a key that controls auto login.
  rememberMe;

  /// [allowList] is a method that returns the list of keys that are allowed to be cached.
  static Set<String> get allowList =>
      CacheAllowListEnum.values.map((e) => e.name).toSet();
}
