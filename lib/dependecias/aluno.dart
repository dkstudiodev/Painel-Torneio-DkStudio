
class Aluno {
  final String? nome;
  final String? casa;
  final String? turma;
  final String? professor;
  final int pontos;

  // Turma? turma;

  Map<String, dynamic> topMap() {
    Map<String, dynamic> map = {
      'nome': this.nome,
      'casa': this.casa,
      'turma': this.turma,
      'professor' : this.professor,
      'pontos' : this.pontos,
    };

    return map;
  }

  Aluno({required this.professor,required this.nome,required this.casa, required this.turma, required this.pontos});
}
