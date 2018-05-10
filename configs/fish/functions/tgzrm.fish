# Defined in - @ line 0
function tgzrm --description 'alias hgrep=history | grep'
    for f in (ls -1 *.tar.gz)
        tar -xzf $f
    end
    rm *.tar.gz
end
