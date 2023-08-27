abstract final class ApiConst {
  // static const _baseUrl = String.fromEnvironment(
  //   "base_url",
  //   defaultValue: "...",
  // );

  static getUserByUsername(String username) => "api/v3/user/$username";
}
