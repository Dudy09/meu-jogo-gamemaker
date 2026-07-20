//Isso serve para caso ainda não tenha mostrado o texto inteiro, adiciona mais letras
if(caractere_atual < string_length(texto_completo))
{
	caractere_atual += velocidade_texto;
	//Recorta o texto original do inicio até o caractere atual
	texto_atual = string_copy(texto_completo, 1, floor(caractere_atual));
	
	if(atraso_clique > 0)
	{
		atraso_clique--;	
	}
	
}

//Se eu apertar Z ele fecha ou avança a caixa
if(keyboard_check_released(ord("Z")) or keyboard_check_released(vk_enter))
{
	//se o texto ainda está correndo, pula direto para o final
	if(caractere_atual < string_length(texto_completo))
	{
		caractere_atual = string_length(texto_completo);	
		
		texto_atual = texto_completo;
	}
	
	else
	{
		//Se o texto já acabou, ele fecha a caixa de texto
		instance_destroy();
		io_clear();
	}
}