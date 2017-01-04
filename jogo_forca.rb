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
	puts "A palavra está sendo escolhida..."
	sleep 2
	puts "\n\n\n"
	palavra_secreta = "programador"
	puts "Escolhida a palavra! Ela tem #{palavra_secreta.size} letras..."
	sleep 1
	palavra_secreta
end

def entrada_jogador (erros, tentativas_anteriores)
	puts "\n\n\n\n"
	puts "Erros até agora: #{erros}"
	puts "Tentativas anteriores: #{tentativas_anteriores}"
	tentativa_jogador = gets.strip
	puts "Será que você acertou?"
	sleep 1
	tentativa_jogador
end

def jogar(nome_jogador)
	palavra_secreta = escolhe_palavra_secreta
	erros = 0
	tentativas_anteriores = []
	pontuacao_jogador = 0

	while erros < 5
		tentativa_jogador = entrada_jogador erros, tentativas_anteriores
		tentativas_anteriores << tentativa_jogador
		
		tentiva_uma_letra = tentativa_jogador.size == 1
		if tentiva_uma_letra
			letra_procurada = tentativa_jogador [0]
			total_encontrado = 0
			for i in 0..(palavra_secreta.size-1)
				if palavra_secreta[i] == letra_procurada
					total_encontrado += 1
				end
			end
			if total_encontrado != 0
				puts "Letra econtrada #{total_encontrado} vezes."
			else
				puts "Letra não encontrada."
				erros += 1
			end
		else
			acertou = tentativa_jogador == palavra_secreta
			if acertou
				puts "Parabéns! Você acertou..."
				pontuacao_jogador += 100
				break
			else
				puts "Você errou..."
				pontuacao_jogador -= 20
				erros += 1
			end		
		end
	end

	puts "Você ganhou #{pontuacao_jogador} pontos."

end



def jogar_novamente
    puts "Deseja jogar novamente? (S/N)"
    quer_jogar = gets.strip
    if quer_jogar.upcase == "S" || quer_jogar.upcase == "N"
        quer_jogar.upcase == "N"    
    else        
        opcao_invalida
        jogar_novamente
    end
end

def opcao_invalida

    puts "Opção inválida. Tente novamente."
    puts "\n\n"
end

loop do 
	nome_jogador = boas_vindas
	jogar nome_jogador

	if jogar_novamente
		break
	end
	
end
