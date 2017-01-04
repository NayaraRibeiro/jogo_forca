require_relative "ui"

def jogar(nome_jogador)
	palavra_secreta = escolhe_palavra_secreta
	erros = 0
	tentativas_anteriores = []
	pontuacao_jogador = 0

	while erros < 5
		tentativa_jogador = entrada_jogador erros, tentativas_anteriores
		if tentativas_anteriores.include? tentativa_jogador
			tentativa_ja_realizada tentativa_jogador
			next
		end

		tentativas_anteriores << tentativa_jogador
		
		tentiva_uma_letra = tentativa_jogador.size == 1
		if tentiva_uma_letra
			letra_procurada = tentativa_jogador [0]
			total_encontrado = palavra_secreta.count letra_procurada
			
			if total_encontrado == 0
				letra_nao_encontrada
				erros += 1
			else
				letra_encontrada total_encontrado
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

#main

nome_jogador = boas_vindas

loop do 
	
	jogar nome_jogador

	if jogar_novamente
		break
	end
	
end
