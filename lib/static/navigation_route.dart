enum NavigationRoute {
  mainRoute("/"),
  landingRoute("/landing"),
  registerRoute("/register"),
  loginRoute("/login");

  const NavigationRoute(this.name);
  final String name;
}
