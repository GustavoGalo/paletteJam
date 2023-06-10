if (tilemap_get_at_pixel(tiles, x, bbox_bottom) != 0 && tilemap_get_at_pixel(tiles, x, bbox_bottom + 16) != 0) 
	grounded = true;
else 
	 grounded = false;