//Center the text's origin relative to the x and y of the object
txt_x = x -  string_width(string_hash_to_newline(txt)) * (0 mod 3)/2 + 40;
txt_y = y + string_height(string_hash_to_newline(txt)) * (0 div 3)/2 + 20;

draw_set_font(font); //changeable with creation code.
draw_text(txt_x, txt_y, string_hash_to_newline(txt));

