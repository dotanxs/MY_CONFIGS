# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

## FIN

BOLD_AND_UNDERLINED="\e[1;4m"
GREEN="\e[32m"
STANDARD="\e[0m"
TODO_LIST_LABEL="\n — — — — — — — — — — — -TODO — — — — — — — — — — — — \n"
TODO_LIST_END=" — — — — — — — — — — — — — — — — — — — — — — — — — — \n\n"
TASKS_DIR=~/TODO/outstanding_tasks/
COMPLETED_DIR=~/TODO/completed_tasks/

function todo {
	if [ -z "$1" ]
		then
			printf "${TODO_LIST_LABEL}"
			find ${TASKS_DIR} -not -path '*/\.*' -type f -execdir echo '{}' ';' | nl -s '[] ' -b n
			printf "${TODO_LIST_END}"
		else
			touch ${TASKS_DIR}"${*}"
			todo
	fi
}

_fin () {
	IFS=$'\n' tmp=( $(compgen -W "$(ls "${TASKS_DIR}")" — "${COMP_WORDS[$COMP_CWORD]}" ))
	COMPREPLY=( "${tmp[@]// /\ }" )
	IFS=$' '
}

function fin {
	if ! [ -z "$1" ] && [ -a ${TASKS_DIR}"${*}" ]
		then
			mv ${TASKS_DIR}"$1" ${COMPLETED_DIR}
			todo
			printf " ${GREEN}DONE ${STANDARD}with ${BOLD_AND_UNDERLINED}$1${STANDARD}\n\n"
			else
				echo -e "\nusage: fin [existing task to complete]\n"
	fi
}

## /FIN

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep -x i3 || exec startx
fi
