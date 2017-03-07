# python3-style:
#   pkg:
#     - installed
#     - pkgs:
#       - python3-pep8
#       - python3-pep8-naming
#       - python-autopep8
#       - flake8
#       - python3-mccabe

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
