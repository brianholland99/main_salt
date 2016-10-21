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
  pkg.installed:
    - sources:
      - vagrant: https://releases.hashicorp.com/vagrant/1.8.6/vagrant_1.8.6_x86_64.deb

packer:
  archive.extracted:
    - name: /usr/local/bin/
    - source: https://releases.hashicorp.com/packer/0.10.2/packer_0.10.2_linux_amd64.zip
    - archive_format: zip
    - source_hash: sha256=86c78bae6bd09afb4ddb86915cb71a22fb81ea79578bbf65de3ef48c842d9b2b
    - user: root
    - group: root
    - if_missing: /usr/local/bin/packer

packerinstalled:
  cmd.run:
    - name: "chmod 0755 /usr/local/bin/packer"
    - require:
       - packer
