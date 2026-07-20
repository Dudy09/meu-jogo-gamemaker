if(alvo == noone)
{
	exit;	
} //Seguindo alvo

x = lerp(x, alvo.x, .1); //Quanto mais alto o valor de ambas mais rapido a camera seguie o playe quase seja baixo ela demora para chegar
y = lerp(y, alvo.y, .1);