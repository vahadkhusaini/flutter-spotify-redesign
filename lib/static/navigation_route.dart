enum NavigationRoute {
  mainRoute("/"),
  landingRoute("/landing"),
  registerRoute("/register"),
  homeRoute("/home"),
  modeRoute("/mode"),
  loginRoute("/login");

  const NavigationRoute(this.name);
  final String name;
}
