asthma() {
	pushd ~/Music/asthma &> /dev/null
	youtube-dl --id --download-archive asthma.txt -f bestaudio $1 &> /dev/null
	popd &> /dev/null
}

curl() {
	command curl $@
	echo
}

pye() {
	x=$1
	shift
	command python -c "print(repr($x))" $@
}

_bash_help() {
	(builtin help -m $@ 2>/dev/null || $@ --help || return) | less
}

_bash_man() {
	command man $@ 2>/dev/null || (help -m $@ | less)
}

[[ -n BASH_VERSION ]] && alias man=_bash_man

[[ -n ZSH_VERSION ]] && alias help=run-help

secret() {
	xclip -sel c <(head -n1 < "$HOME/secrets/.$1.passwd")
}

which code-oss &>/dev/null && alias code=code-oss
which code-insiders &>/dev/null && alias code=code-insiders

alias pgp=gpg

alias epy="pipenv run python"

alias vs='code . && exit'
