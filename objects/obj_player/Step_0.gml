#region //Criando variaveis das teclas de movimentação e calculando velocidade

var _right = keyboard_check(ord("D")) or keyboard_check(vk_right);
var _left = keyboard_check(ord("A")) or keyboard_check(vk_left);
var _up = keyboard_check(ord("W")) or keyboard_check(vk_up);
var _down = keyboard_check(ord("S")) or keyboard_check(vk_down);
//var _interagir = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter);

hspd = (_right - _left) * vel_spd;
vspd = (_up - _down) * vel_spd;

#endregion

if(hspd != 0 || vspd != 0)
{
	olhar_direcao = point_direction(0, 0, hspd, vspd);	
}

#region //Colisão vertical e horizontal

if place_meeting(x + hspd, y, obj_parede) //Checa se na horizontal mais sua velocidade ele irá bater em uma parede
{
	while !place_meeting(x + sign(hspd), y, obj_parede) //Enquanto eu não bater na parede acrescentar na velocidade
	{
		x += sign(hspd); //Acrescentando
	}
	
	hspd = 0; //Caso bata zera a velocidade
}

x += hspd; //Pega o valor de x e adiciona mais o valor da velocidade horizontal

//Mesma coisa só que para vertical
if place_meeting(x, y + vspd, obj_parede)
{
	while !place_meeting(x, y + sign(vspd), obj_parede)
	{
		y += sign(vspd);
	}
	
	vspd = 0;
}
y -= vspd;

#endregion

#region //Interagir

//Caso você aperte Z ou Enter
if(keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter))
{
	//Calcula um ponto exatamente 16 pixels à frente dos pés do jogador(isso porque o ponto de origem está no centro inferior)
	var _checar_x = x + lengthdir_x(16, olhar_direcao);
	var _checar_y = y + lengthdir_y(16, olhar_direcao);
	
	//Agora aqui ele está procurando se existem algum objeto interativo na exata posição
	var _objeto_frente = instance_position(_checar_x, _checar_y, obj_interativo)
	
	//Caso ele consiga encontrar algo ele ativa o evento de interação dele
	if(_objeto_frente != noone)
	{
		with(_objeto_frente)
		{
			//Por enquanto vou deixar apenas um balão de texto só por teste
			show_message(texto_interacao);
		}
	}
	
}

#endregion