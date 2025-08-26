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
  double coelhosJovens = 1;
  double coelhosAdultos = 1;
  int mesAtual = 1;

  for (int meses = 24; mesAtual <= meses; mesAtual++) {
    // Lógica para replicação da população de coelhos
    if (mesAtual <= 12) {
      coelhosAdultos = coelhosAdultos * 2;
      coelhosJovens = coelhosJovens * 2;
      totalDeCoelhos = coelhosAdultos + coelhosJovens;
    }

    // Imprimir informações de log
    print(
      "Fim do Mês: $mesAtual. População de coelhos: $totalDeCoelhos. Jovens: $coelhosJovens. Adultos: $coelhosAdultos",
    );
  }
}
