ppa-pycharm:
  pkgrepo.managed:
    - name: pycharm_repo
    - ppa: mystic-mirage/pycharm
    - require_in:
      - pkg: pycharm-community

pycharm-community:
  pkg:
    - installed
