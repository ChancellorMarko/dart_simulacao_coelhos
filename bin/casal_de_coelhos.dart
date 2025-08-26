class CasalDeCoelhos {
  int quantCasalDeCoelhos;
  bool saoAdultos;

  CasalDeCoelhos({required this.quantCasalDeCoelhos, required this.saoAdultos});

  void TornarAdulto() {
    saoAdultos = true;
  }

  void TornarJovem() {
    saoAdultos = false;
  }

  void AumentarQuantCoelhos() {
    quantCasalDeCoelhos += 2;
  }

  void DiminuirQuantCoelhos() {
    quantCasalDeCoelhos -= 2;
  }

  String LogQuantCoelhos() {
    return "$quantCasalDeCoelhos";
  }

  bool LogStatusCoelhos() {
    return saoAdultos;
  }
}
