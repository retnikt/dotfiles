asthma() {
	pushd ~/Music/asthma &> /dev/null
	youtube-dl --id --download-archive asthma.txt -f bestaudio $1 &> /dev/null
	popd &> /dev/null
}

curl() {
	$(which curl) $@
	echo
}

pye() {
	$(which python) -c "print(repr($1))" $@
}

help() {
	(builtin help -m $@ 2>/dev/null || $@ --help) | less
}

man() {
	command man $@ || (help -m $@ | less)
}

alias code=code-insiders

alias pgp=gpg

alias epy="pipenv run python"

alias vs='code . && exit'
