{% from "tmux/map.jinja" import tmux with context %}

include:
  - tmux

{% for username, user in tmux.users.items() %}
{{ username }}'s 'tmux config:
  file.managed:
    - name: {{ user.get('config_file', "/home/" + username + "/.tmux.conf") }}
    - source: {{ user.get('config_src', tmux.config_src) }}
    - user: {{ user.get('config_user', username) }}
    - group: {{ user.get('config_group', username) }}
    - mode: {{ user.get('config_mode', tmux.config_mode) }}
{% endfor %}

{% if tmux.managed_config %}
tmux config:
  file.managed:
    - name: {{ tmux.config_file }}
    - source: {{ tmux.config_src }}
    - user: {{ tmux.config_user }}
    - group: {{ tmux.config_group }}
    - mode: {{ tmux.config_mode }}
{% endif %}
