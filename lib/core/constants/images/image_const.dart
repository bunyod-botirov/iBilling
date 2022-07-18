class ImageConst {
  static final ImageConst _instance = ImageConst._init();
  static ImageConst get instance => _instance;
  ImageConst._init();

  String toSvg(String name) => "assets/images/svg/$name.svg";
  String toPng(String name) => "assets/images/png/$name.png";
  String toIcon(String name) => "assets/icons/$name.svg";
  String toLottie(String name) => "assets/images/$name.json";

  // ? Png
  String get profile => toPng("profile");

  // ? Svg
  // String get settingsIcon => toIcon("settings_icon");

  // ? Icons
  String get settingsIcon => toIcon("settings_icon");
  String get vLine => toIcon("v_line");
  String get searchIcon => toIcon("search_icon");
  String get paperIcon => toIcon("paper_icon");
  String get paperIconBigger => toIcon("paper_icon_bigger");

  String get invoiceIcon => toIcon("invoice_icon");
  String get calendarIcon => toIcon("calendar_icon");
  String get accountCircle => toIcon("account_circle");
  String get bookmarkUnselected => toIcon("bookmark_unselected");
}
