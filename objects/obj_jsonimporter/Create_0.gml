global.enemies = undefined;

if (file_exists(working_directory + "stats.json")) {
	var json = "";
	
	var file = file_text_open_read(working_directory + "stats.json");
	
	while(file_text_eof(file) == false) {
		json += file_text_readln(file);
	}
	
	file_text_close(file);
	
	global.enemies = json_parse(json);
}