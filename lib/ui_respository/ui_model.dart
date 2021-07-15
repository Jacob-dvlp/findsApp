abstract class UiModel {
  Future<dynamic> loginUser(String email, String password);

  Future<dynamic> createUser(
    String n,
    String s,
    String c,
    dynamic senha,
    String rua,
    int numero,
    String bairro,
    String cidd,
  );



}
