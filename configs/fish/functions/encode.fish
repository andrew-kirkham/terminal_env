# Defined in - @ line 0
function encode --description 'alias encode=echo -n $1 | base64'
	echo -n $argv | base64;
end
