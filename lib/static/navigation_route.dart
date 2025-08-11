enum NavigationRoute {
  mainRoute("/"),
  landingRoute("/landing"),
  registerRoute("/register"),
  homeRoute("/home"),
  loginRoute("/login");

  const NavigationRoute(this.name);
  final String name;
}
