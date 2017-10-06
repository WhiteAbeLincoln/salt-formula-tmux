{% from "tmux/map.jinja" import tmux with context %}

install tmux:
  pkg.installed:
    - pkgs: tmux.pkgs
