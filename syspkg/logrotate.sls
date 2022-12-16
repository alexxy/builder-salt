logrotate.pkg:
  pkg:
    - installed
    - names:
      - app-admin/logrotate

logrotate.timer:
  service.running:
    - name: logrotate.timer
    - enable: True

