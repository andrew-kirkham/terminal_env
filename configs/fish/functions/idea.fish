# Defined in - @ line 0
function idea --description 'open intellij idea'
    open -na "IntelliJ IDEA.app" --args (pwd)/"$argv"
end
