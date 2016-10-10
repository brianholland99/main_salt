# Use Unity desktop for now.  To switch to KDE, install kubuntu-desktop
# instead of ubuntu-desktop.
#
ubuntu-desktop:
  pkg:
    - installed

openssh-server:
  pkg:
    - installed

python3-style:
  pkg:
    - installed
    - pkgs:
      - python3-pep8
      - python3-pep8-naming
      - python-autopep8
      - flake8

vim-gnome:
  pkg:
    - installed

python3-sqlalchemy:
  pkg:
    - installed

google-chrome-repo:
  pkgrepo.managed:
    - human_name: Google Chrome
    - name: deb http://dl.google.com/linux/chrome/deb/ stable main
    - file: /etc/apt/sources.list.d/google-chrome-browser.list
    - key_url: https://dl-ssl.google.com/linux/linux_signing_key.pub

google-packages:
  pkg.installed:
    - pkgs:
      - google-chrome-stable
    - require:
      - pkgrepo: google-chrome-repo

oracle-virtualbox-repo:
  pkgrepo.managed:
    - human_name: Oracle Virtualbox
    - name: deb http://download.virtualbox.org/virtualbox/debian xenial contrib
    - file: /etc/apt/sources.list.d/oracle-virtualbox.list
    - key_url: https://www.virtualbox.org/download/oracle_vbox_2016.asc

virtualbox:
  pkg.installed:
    - pkgs:
      - virtualbox-5.1
    - require:
      - pkgrepo: oracle-virtualbox-repo

