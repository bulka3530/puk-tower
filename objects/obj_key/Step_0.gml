puk -= 0.1
if puk <= 0
{
	puk = 0.4
	step += 1
	y = sin(step) * 5 + startY
}
