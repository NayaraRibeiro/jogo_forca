def boas_vindas
	puts "Bem vindo ao jogo da forca"
	puts "Qual o seu nome?"
	nome_jogador = gets.strip
	puts "\n\n\n\n"
	puts "Começaremos o jogo pra você, #{nome_jogador}. Boa sorte!"
	sleep 1
	nome_jogador
end

def alerta_escolhendo_palavra_secreta
	puts "Aguarde enquanto a palavra está sendo escolhida..."
	sleep 2
	puts "\n\n\n"
end

def alerta_palavra_secreta_escolhida (palavra_secreta)
	puts "Escolhida a palavra! Ela tem #{palavra_secreta.size} letras... Você pode cometer até 5 erros."
	sleep 1
	palavra_secreta
end

def cabecalho_tentativa (erros, tentativas_anteriores, mascara)
	puts "\n\n\n\n"
	puts "Palavra secreta: #{mascara}"
	puts "Erros até agora: #{erros}"
	puts "Tentativas anteriores: #{tentativas_anteriores}"
end

def entrada_jogador
	puts "\n"
	puts "Digite uma letra ou a palavra: "
	tentativa_jogador = gets.strip.downcase
	puts "Será que você acertou?"
	sleep 1
	tentativa_jogador
end

def tentativa_ja_realizada  (tentativa_jogador)
	puts "Você já tentou '#{tentativa_jogador.upcase}'."
end

def letra_nao_encontrada
	puts "Letra não encontrada."
end

def letra_encontrada (total_encontrado)
	puts "Letra econtrada #{total_encontrado} vezes."
end

def acertou
	puts "Parabéns! Você acertou..."
end

def errou
	puts "Você errou..."	
end

def pontuacao_final (pontuacao_jogador)
	puts "Você ganhou #{pontuacao_jogador} pontos."
end

def mostra_palavra_secreta palavra_secreta

	puts "A palavra secreta era #{palavra_secreta}."
	puts "\n\n\n"
	
end

def quer_jogar_novamente
	puts "Deseja jogar novamente? (S/N)"	
end

def opcao_invalida

    puts "Opção inválida. Tente novamente."
    puts "\n\n"
end

