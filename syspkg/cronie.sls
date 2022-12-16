cronie.pkg:
  pkg:
    - installed
    - names:
      - sys-process/cronie

cronie.service:
  service.running:
    - name: cronie
    - enable: True


