# ELK-Stack-on-Kubernetes-with-Helm

# Step 1: Setting Up Kubernetes
```
$ minikube start --cpus 4 --memory 8192
$ minikube start --cpus 2 --memory 4096
$ kubectl cluster-info
```
```
setopt PROMPT_SUBST
PROMPT='$$'
PROMPT='%{$(pwd|grep --color=always /)%${#PWD}G%} %(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m%f%(!.%F{red}.)%#%f '
PROMPT='#%f '
```
```
setopt PROMPT_SUBST
PROMPT='%{$(pwd|([[ $EUID == 0 ]] && GREP_COLORS="mt=01;31" grep --color=always /|| GREP_COLORS="mt=01;34" grep --color=always /))%${#PWD}G%} %(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m%f%(!.%F{red}.)%#%f '
```