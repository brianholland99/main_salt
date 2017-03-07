# Tools for dealing with VMs

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

vagrant:
  pkg.installed:
    - sources:
      - vagrant: https://releases.hashicorp.com/vagrant/1.9.1/vagrant_1.9.1_x86_64.deb

packer:
  archive.extracted:
    - name: /usr/local/bin/
    - source: https://releases.hashicorp.com/packer/0.12.2/packer_0.12.2_linux_amd64.zip
    - archive_format: zip
    - enforce_toplevel: False
    - source_hash: sha256=035d0ea1fe785ab6b673bc2a79399125d4014f29151e106635fa818bb726bebf
    - user: root
    - group: root
    - if_missing: /usr/local/bin/packer

/usr/local/bin/packer:
  file.managed:
    - mode: '0755'
    - require:
       - packer
