binrepos.conf:
  file.managed:
    - name: /etc/portage/binrepos.conf
    - source: salt://portage/files/binrepos.conf
    - template: jinja


