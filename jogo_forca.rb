require_relative "ui"

def escolhe_palavra_secreta
	alerta_escolhendo_palavra_secreta
	texto = File.read("dicionario.txt")
	todas_palavras_do_dicionario = texto.split "\n"
	numero_escolhido = rand(todas_palavras_do_dicionario.size)
	palavra_secreta = todas_palavras_do_dicionario [numero_escolhido].downcase
	alerta_palavra_secreta_escolhida palavra_secreta
end

def tentativa_valida (tentativas_anteriores, erros, mascara)
	cabecalho_tentativa erros, tentativas_anteriores, mascara
	loop do
		tentativa_jogador = entrada_jogador
		if tentativas_anteriores.include? tentativa_jogador
			tentativa_ja_realizada tentativa_jogador
		else
			return tentativa_jogador
		end	
	end
end

def palavra_mascarada (palavra_secreta, tentativas_anteriores)
	mascara = " "
	for letra in tentativas_anteriores.chars
		if palavra_secreta.include? letra
			mascara << letra
		else
			mascara << "*"
		end	
	end
	mascara
end

def jogar(nome_jogador)
	palavra_secreta = escolhe_palavra_secreta
	erros = 0
	tentativas_anteriores = []
	pontuacao_jogador = 0

	while erros < 5
		mascara = palavra_mascarada tentativas_anteriores, palavra_secreta
		tentativa_jogador = tentativa_valida tentativas_anteriores, erros, mascara
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
			jogador_acertou = tentativa_jogador == palavra_secreta
			if jogador_acertou
				acertou
				pontuacao_jogador += 100
				break
			else
				errou
				pontuacao_jogador -= 20
				erros += 1
			end		
		end
	end

	pontuacao_final pontuacao_jogador
	mostra_palavra_secreta palavra_secreta

end

def jogar_novamente
    quer_jogar_novamente
    quer_jogar = gets.strip
    if quer_jogar.upcase == "S" || quer_jogar.upcase == "N"
        quer_jogar.upcase == "N"    
    else        
        opcao_invalida
        jogar_novamente
    end
end

def jogo_da_forca

	nome_jogador = boas_vindas

	loop do 
		
		jogar nome_jogador

		if jogar_novamente
			break
		end
		
	end
end
