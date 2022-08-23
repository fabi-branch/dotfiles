#!/bin/bash

# Configure Git
git config --global alias.s 'status'
git config --gloabl alias.dc 'diff --cached'
git config --global alias.c 'commit -s'
git config --global alias.p 'push'

# Configure shell aliases
alias k='kubectl'
alias kp='kubectl get pods'

alias ll="ls -l"
alias la="ls -a"

#always config environemnt before working on the code
alias configenv="cd ~/data-platform/ && bazel run //config:switch_environment fabiprabhakar"

#Open Jupyter in the browser
alias notebook="jupyter notebook"
alias jupyter_status="jupyterctl --status --namespace fabiprabhakar"
alias jupyter_update="jupyterctl --deploy --namespace fabiprabhakar"

alias ns_redeploy='bazel run //config:switch_environment eglover ; bazel run //jupyter:deploy.delete ; bazel run //k8s_base:deploy.apply ; start_jupyter'
alias start_jupyter='bazel run //config:switch_environment eglover ; bazel run //jupyter:deploy.apply'
alias stop_jupyter='bazel run //config:switch_environment eglover ; bazel run //jupyter:deploy.delete'


