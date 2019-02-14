if [ "??" = "$(git status --short $1 | cut -c1-2)" ]; then cat $1; else git diff --color=always $1 | tail --lines=+6; fi
