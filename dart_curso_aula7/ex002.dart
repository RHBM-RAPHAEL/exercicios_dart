void main() {
	List<String> players = ["Raphael", "Carlos", "Ana", "Pedro"];
	print("Total de jogadores: ${players.length}");
	players.remove("Carlos");
	players.add("Lucas");
	print("Ana está na lista? ${players.contains("Ana")}");
	print("Jogadores: ${players}");
	print("Atualizacao da quantidade de jogadores: ${players.length}");
}
