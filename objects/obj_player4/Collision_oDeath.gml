
if (lifes > 0) {
	load_checkpoint();
	lifes--;
}
else {
	load_checkpoint();
	file_delete(fname_checkpoint);
	lifes = 5;
}
