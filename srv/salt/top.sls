base:
  bhdesk:
    - ubuntu-desktop
    - google-chrome
    - python-dev
    - pycharm
    - vm-master

  minion02:
    - ubuntu-desktop
    - google-chrome
    - python-dev
    - pycharm

  '*':
    - openssh-server
