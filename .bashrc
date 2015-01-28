set -o vi

parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='\[\e[1;32m\][\u@\A \w$(parse_git_branch)]\$\[\e[0m\] '

export JAVA_HOME=/usr/java/jdk
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib
export PATH=.:$PATH:${JAVA_HOME}/bin

export PATH=$PATH:/opt/lampp/bin

export PATH=$PATH:/home/fh/apps/nodejs/bin

export M2_HOME=/home/fh/apps/maven
export M2=${M2_HOME}/bin
export PATH=$PATH:${M2}
