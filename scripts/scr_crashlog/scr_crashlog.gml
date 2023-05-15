//gives a crash page that isnt the default one
exception_unhandled_handler(function (exception){
	
	//creates a crash file that you can then send to me
	if file_exists("crash.txt") file_delete("crash.txt");
    var _f = file_text_open_write("crash.txt");
    file_text_write_string(_f, string(exception));
    file_text_close(_f);
	
	//chooses a random crash message
	var r = irandom_range(1, 10)
	if r = 1
	show_message("Uhh... looks like the game crashed...\n\n" + exception.longMessage)
	else if r = 2
	show_message("Holy Shit! Bugs! report them to that idiot of Seba\n\n" + exception.longMessage)
	else if r = 3
	show_message("Sorry player, Felia sabotaged the code\n\n" + exception.longMessage)
	else if r = 4
	show_message("A little bug entered the code, we didn't want to remove it cause its cute\n\n" + exception.longMessage)
	else if r = 5
	show_message("dn24hh313nhd... 7gg7h%&727/!(7283yh+1à3e... :) \n\n" + exception.longMessage)
	else if r = 6
	show_message("We're too lazy to write an error, sorry!\n\n" + exception.longMessage)
	else if r = 7
	show_message("Nails fucked up global.sugary\n\n" + exception.longMessage)
	else if r = 8
	show_message("Uh.. hi... oh you want some crash information... here it comes...\n\n" + exception.longMessage)
	else if r = 9
	show_message("Looking for new coders...\n\n" + exception.longMessage)
	else if r = 10
	show_message("Erhmm... dont play PTT...\n-Nails\n\n" + exception.longMessage)
})