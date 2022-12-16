gentoo-repo-timestamp:
  file.absent:
    - names:
      - /var/db/repos/gentoo/metadata/timestamp.chk

pkg.refresh_db:
  module.run:
    - pkg.refresh_db:
    - require:
      - gentoo-repo-timestamp
