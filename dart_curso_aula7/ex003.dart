void main() {
	List<double> notas = [7.5, 8.0, 6.5, 9.0];
	double sum = 0.0;
	double media = 0.0;

	for (double nota in notas) {
		sum += nota;
	}
	
	media = sum / notas.length;
	print("Notas: $notas");
	print("Qunatidade de notas: ${notas.length}");
	print("Média: $media");
	
	if (media >= 7.0) {
		print("Aluno aprovado!");
	} else {
		print("Reprovado!");
	}
}
