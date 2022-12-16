mirrors:
  file.managed:
    - name: /etc/portage/mirrors
    - source: salt://portage/files/mirrors
    - template: jinja

