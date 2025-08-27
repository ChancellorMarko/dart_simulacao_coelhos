// Autor: Marcos André.
// Titulo: Simulador de população de coelhos.
// Descrição: Você está desenvolvendo um simulador de população de
// coelhos para um projeto de biologia. Inicialmente, há um casal
// de coelhos jovens. Ao final de cada mês, o casal de coelhos se
// torna adulto e gera um novo casal de coelhos jovens. Os coelhos
// jovens se tornam adultos após um mês. A população de coelhos
// aumenta mês a mês de acordo com essas regras.

void main() {
  double totalDeCoelhos = 0;
  double coelhosJovens = 2;
  double coelhosAdultos = 0;
  int mesAtual = 1;

  for (int meses = 24; mesAtual <= meses; mesAtual++) {
    // Lógica para replicação da população de coelhos
    if (mesAtual > 12) {
      // Lógica do predador
      coelhosAdultos = coelhosAdultos * 0.25;
      coelhosJovens = coelhosJovens * 0.25;
    }

    coelhosAdultos += coelhosJovens;
    coelhosJovens = coelhosAdultos;
    totalDeCoelhos = coelhosAdultos + coelhosJovens;

    // Imprimir informações de log
    if (mesAtual <= 12) {
      print(
        "Fim do Mês: $mesAtual. População de coelhos: $totalDeCoelhos. Jovens: $coelhosJovens. Adultos: $coelhosAdultos",
      );
    } else {
      print(
        "Fim do Mês: $mesAtual. População de coelhos: $totalDeCoelhos. Jovens: $coelhosJovens. Adultos: $coelhosAdultos (Com predador)",
      );
    }
  }
}
