# Defined in - @ line 0
function ecron --description 'alias ecron=crontab -e'
	crontab -e $argv;
end
