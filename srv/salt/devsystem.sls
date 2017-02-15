# Use Unity desktop for now.  To switch to KDE, install kubuntu-desktop
# instead of ubuntu-desktop.
#
ubuntu-desktop:
  pkg:
    - installed

openssh-server:
  pkg:
    - installed

# python3-style:
#   pkg:
#     - installed
#     - pkgs:
#       - python3-pep8
#       - python3-pep8-naming
#       - python-autopep8
#       - flake8
#       - python3-mccabe

vim-gnome:
  pkg:
    - installed

python3-venv:
  pkg:
    - installed

python3-sqlalchemy:
  pkg:
    - installed

python3-yaml:
  pkg:
    - installed
    - pkgs:
      - python3-yaml
      - python3-ruamel.yaml  # Newer and maintained YAML

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
