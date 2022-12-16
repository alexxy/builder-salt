common_flags:
  makeconf.present:
    - name: COMMON_FLAGS
    - value: {{ pillar['portage']['compileflags'] }}

cflags:
  makeconf.present:
    - name: CFLAGS
    - value: ${COMMON_FLAGS}

cxxflags:
  makeconf.present:
    - name: CXXFLAGS
    - value: ${COMMON_FLAGS}

fcflags:
  makeconf.present:
    - name: FCFLAGS
    - value: ${COMMON_FLAGS}

fflags:
  makeconf.present:
    - name: FFLAGS
    - value: ${COMMON_FLAGS}

makeopts:
  makeconf.present:
    - name: MAKEOPTS
    - value: -j{{ grains['num_cpus'] }}  -l{{ grains['num_cpus'] }}

grub_platforms:
  makeconf.present:
    - name: GRUB_PLATFORMS
    - value: efi-64

linguas:
  makeconf.present:
    - name: LINGUAS
    - value: {{ pillar['portage']['linguas'] }}

l10n:
  makeconf.present:
    - name: L10N
    - value: {{ pillar['portage']['linguas'] }}

video_cards:
  makeconf.present:
    - name: VIDEO_CARDS
    - value: {{ pillar['portage']['video_cards'] }}

input_devices:
  makeconf.present:
    - name: INPUT_DEVICES
    - value: {{ pillar['portage']['input_devices'] }}

nptl_kernel_ver:
  makeconf.absent:
    - name: NPTL_KERN_VER

llvm_targets:
  makeconf.absent:
    - name: LLVM_TARGETS

useflags:
  makeconf.present:
    - name: USE
    - value: {{ pillar['portage']['useflags'] }}

cpu_flags_x86:
  makeconf.present:
    - name: CPU_FLAGS_X86
    - value: {{ pillar['portage']['cpu_flags_x86'] }}

ruby_targets:
  makeconf.present:
    - name: RUBY_TARGETS
    - value: {{ pillar['portage']['ruby_targets'] }}

python_targets:
  makeconf.present:
    - name: PYTHON_TARGETS
    - value: {{ pillar['portage']['python_targets'] }}

python_single_target:
  makeconf.present:
    - name: PYTHON_SINGLE_TARGET
    - value: {{ pillar['portage']['python_targets'] }}

features:
  makeconf.present:
    - name: FEATURES
    - value: candy sign metadata-transfer usersandbox userpriv usersync userfetch ipc-sandbox buildpkg binpkg-multi-instance

emergeopts:
  makeconf.present:
    - name: EMERGE_DEFAULT_OPTS
    - value: ${EMERGE_DEFAULT_OPTS} --getbinpkg --usepkg --usepkg-exclude-live

binpkg_format:
  makeconf.present:
    - name: BINPKG_FORMAT
    - value: {{ pillar['portage']['binpkg_format'] }}

portdir:
  makeconf.present:
    - name: PORTDIR
    - value: /var/db/repos/gentoo

distdir:
  makeconf.present:
    - name: DISTDIR
    - value: /var/cache/distfiles

pkgdir:
  makeconf.present:
    - name: PKGDIR
    - value: /var/cache/binpkgs

lc_messages:
  makeconf.present:
    - name: LC_MESSAGES
    - value: C.UTF-8
