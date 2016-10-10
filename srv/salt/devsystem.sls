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

vagrant:
  pkg:
    - installed
