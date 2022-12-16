syslog.pkg:
  pkg:
    - installed
    - names:
      - app-admin/syslog-ng

syslog.service:
  service.running:
    - name: syslog-ng@default
    - enable: True


