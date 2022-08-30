[[ -f ~/.ssh/id_gitlab ]] || ssh-keygen -t ed25519 -f ~/.ssh/id_gitlab    -N ""
[[ -f ~/.ssh/id_sourcehut ]] || ssh-keygen -t ed25519 -f ~/.ssh/id_sourcehut -N ""
[[ -f ~/.ssh/id_github ]] || ssh-keygen -t ed25519 -f ~/.ssh/id_github    -N ""
