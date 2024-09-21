#!/bin/bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck disable=SC1091
source "${CURRENT_DIR}/../tmux_helpers.sh"

main() {
  helper_tearup_linux

  cat <<EOF >~/.tmux.conf
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other plugins
set -g @plugin 'egel/tmux-gruvbox'
set -g @tmux-gruvbox 'light256'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
EOF

  cat ~/.tmux.conf

  # it's essential to link current repo to the plugins' directory
  ln -sfv "$CURRENT_DIR/../../../tmux-gruvbox" "${HOME}/.tmux/plugins/tmux-gruvbox"

  helper_install_tpm_plugins

  # start new detached session
  tmux new -d

  # default value of status-left section from gruvbox theme
  _status_left_expected="#[bg=colour243,fg=colour255] #S #[bg=colour252,fg=colour243,nobold,noitalics,nounderscore]"

  # get status of something from theme
  _status_left_current=$(tmux show-option -gqv status-left)
  if [[ "$_status_left_expected" != "$_status_left_current" ]]; then
    helper_print_fail "status-left did not match" "$_status_left_current" "$_status_left_expected"
    helper_teardown
    exit 1
  fi

  helper_print_success "status-left match"
  helper_teardown
  exit 0

}

main "$@"
