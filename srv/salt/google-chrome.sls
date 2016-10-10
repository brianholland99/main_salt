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
