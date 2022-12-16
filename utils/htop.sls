htop:
  pkg:
    - installed
    - names:
      - sys-process/htop
  portage_config.flags:
    - name: sys-process/htop
    - use:
      - lm-sensors
      - hwloc
