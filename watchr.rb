$exec = "phpunit" 

watch('./(.*).php')  { |m| changed(m[0]) } 

def changed(file) 
  #ignore file, just run all cases
	path = "appbackr/protected/tests/"
  run "cd #{path} && #{$exec} unit/"  
end 

def run(cmd)  
  result = `#{cmd}` 
	puts result
  growl(result)
end 

def growl(message) 
	growlnotify = `which growlnotify`.chomp 

	if message.include?("OK (") and !message.include?("FAILURES")
		image = "~/.watchr_images/passed.png" 
	else
		image = "~/.watchr_images/failed.png"	
	end

	options = "-w -n Watchr --image '#{File.expand_path(image)}' -m '#{message}'" 
	full = %(#{growlnotify} #{options} &)
	system full 
end 
