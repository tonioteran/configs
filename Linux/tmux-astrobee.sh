#!/bin/bash

tmux new-session -d -s test
tmux rename-window 'dev'
tmux select-window -t test:0
tmux split-window -v

tmux new-window
tmux rename-window 'build'
tmux split-window -v

tmux new-window
tmux rename-window 'ros'
tmux split-window -v
tmux split-window -h
