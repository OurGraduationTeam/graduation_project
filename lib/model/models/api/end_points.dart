class EndPoints {
  static const String baseUrl = "https://mindmap-new.azurewebsites.net/api/";

  // auth
  static const String login = "users/Login";
  static const String signup = "users/Register";
  static const String changepassword = "users/Change Password";
  static const String changeUserName = "users/ChangeUserName";
  static const String question = "quiz/submit";
  static const String chat = "Chat";
  static const String assement1 = "Assessment/Level1";
  static const String assement2 = "Assessment/Level2";
  static const String getassement1 = "Assessment/question/level1";
  static  String getassement2 (int domainId) => "Assessment/question/level2/$domainId";
}
