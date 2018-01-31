# Defined in - @ line 0
function lh --description alias\ lh=ls\ -a\ \|\ egrep\ \"\^\\.\"
	ls -a | egrep "^\." $argv;
end
