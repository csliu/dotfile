# enable usage of mouse
set -g mode-mouse on
set -g mouse-select-pane on
set -g mouse-resize-pane on
set -g mouse-select-window on
set -g history-limit 8192
set -g base-index 1

# status bar
set -g status-bg black
set -g status-fg white
set -g status-right-fg green
set -g status-left-fg green
set -g status-keys vi

# window option
setw -g window-status-fg cyan
setw -g window-status-current-fg red
setw -g window-status-current-format '[###I:#W]'
setw -g window-status-format '[###I:#W]'
setw -g mode-keys vi
setw -g utf8 on

# change tmux prefix shortcut to ALT+b
set -g prefix M-b
unbind-key C-b
bind-key M-b send-prefix

# split window
unbind '"'
bind - splitw -v
unbind %
bind | splitw -h

# select panel
bind k selectp -U
bind j selectp -D
bind h selectp -L
bind l selectp -R

# reload config
unbind r
bind r source-file ~/.tmux.conf
