====
tmux formula
====

Formula to install and configure tmux 

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available States
====

.. contents::
   :local:

      
``tmux``
----

Installs tmux 

``tmux.config``
----

Installs a .tmux.conf to the default global tmux conf location.
The tmux configuration file included just adds UTF-8 support but can be changed by modifying the `config_src` key in your pillar file.
