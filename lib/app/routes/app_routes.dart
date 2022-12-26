part of 'app_pages.dart';

abstract class Routes{
  Routes._();

  static const NAVIGATION = _Paths.NAVIGATION;
  static const HOME = _Paths.HOME;
  static const WISH = _Paths.WISH;
  static const CART = _Paths.CART;
  static const PROFILE = _Paths.PROFILE;
}

abstract class _Paths{
  _Paths._();
  static const NAVIGATION = '/navigation';
  static const HOME = '/home';
  static const WISH = '/wish';
  static const CART = '/cart';
  static const PROFILE = '/profile';
}