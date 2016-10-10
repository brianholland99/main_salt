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
