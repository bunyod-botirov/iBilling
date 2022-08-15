class ImageConst {
  static final ImageConst _instance = ImageConst._init();
  static ImageConst get instance => _instance;
  ImageConst._init();

  // ? Png
  String get profile => toPng("profile");

  // ? Svg
  String get langUzb => toSvg("lang_uzb");
  String get langRus => toSvg("lang_rus");
  String get langEng => toSvg("lang_eng");
  String get introWelcome => toPng("intro_welcome");
  String get introSearch => toPng("intro_search");
  String get introGrow => toPng("intro_grow");

  String get settingsIcon => toSvg("settings_icon");
  String get vLine => toSvg("v_line");
  String get searchIcon => toSvg("search_icon");
  String get paperIcon => toSvg("paper_icon");
  String get paperIconBigger => toSvg("paper_icon_bigger");
  String get invoiceIcon => toSvg("invoice_icon");
  String get calendarIcon => toSvg("calendar_icon");
  String get accountCircle => toSvg("account_circle");
  String get bookmarkUnselected => toSvg("bookmark_unselected");

  String toSvg(String name) => "assets/images/svg/$name.svg";
  String toPng(String name) => "assets/images/png/$name.png";
  String toLottie(String name) => "assets/images/$name.json";
}
