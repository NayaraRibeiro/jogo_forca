def boas_vindas
	puts "Bem vindo ao jogo da forca"
	puts "Qual o seu nome?"
	nome_jogador = gets.strip
	puts "\n\n\n\n"
	puts "Começaremos o jogo pra você, #{nome_jogador}. Boa sorte!"
	sleep 1
	nome_jogador
end

def escolhe_palavra_secreta
	puts "Aguarde enquanto a palavra está sendo escolhida..."
	sleep 2
	puts "\n\n\n"
	palavra_secreta = "palavra"
	puts "Escolhida a palavra! Ela tem #{palavra_secreta.size} letras..."
	sleep 1
	palavra_secreta
end

def entrada_jogador (erros, tentativas_anteriores)
	puts "\n\n\n\n"
	puts "Erros até agora: #{erros}"
	puts "Tentativas anteriores: #{tentativas_anteriores}"
	tentativa_jogador = gets.strip.downcase
	puts "Será que você acertou?"
	sleep 1
	tentativa_jogador
end

def tentativa_ja_realizada  (tentativa_jogador)
	puts "Você já tentou #{tentativa_jogador}"
end

def letra_nao_encontrada
	puts "Letra não encontrada."
end

