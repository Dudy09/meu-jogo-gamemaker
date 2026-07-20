//Primeiro tenho que defini a posicao da caixa de texto na tela
var _x = (display_get_gui_width() - largura_caixa) / 2;
var _y = (display_get_gui_height() - altura_caixa) - 30;

//Agora eu desenho uma borda branca na caixa
draw_set_color(c_white);
draw_rectangle(_x, _y, _x + largura_caixa, _y + altura_caixa, false);

//Agora eu desenho o fundo preto por denro da borda
draw_set_color(c_black);
draw_rectangle(_x + 4, _y + 4, _x + largura_caixa - 4, _y + altura_caixa - 4, false);

//Agora tem que desenhar o texto correndo pela caixa
draw_set_color(c_white);
// draw_set_font(fnt_minha_fonte) //Depois tenho que criar um adicionar uma fonte
draw_text_ext(_x + 20, _y + 20, texto_atual, 20, largura_caixa - 40);