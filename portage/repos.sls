repos.conf:
  file.directory:
    - makedirs: True
    - names:
      - /etc/portage/repos.conf

gentoo.conf:
  file.managed:
    - name: /etc/portage/repos.conf/gentoo.conf
    - source: salt://portage/files/gentoo.conf
    - template: jinja
    - require:
      - repos.conf
