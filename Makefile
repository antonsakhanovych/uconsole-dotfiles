STOW           := stow -S -t ~ --no-folding
UNSTOW         := stow -D -t ~ --no-folding
RESTOW         := stow -R -t ~ --no-folding
STOW_ROOT      := sudo stow -S -t /root --no-folding
UNSTOW_ROOT    := sudo stow -D -t /root --no-folding
STOW_SYSTEMD   := sudo stow -S -t /etc/systemd --no-folding
UNSTOW_SYSTEMD := sudo stow -D -t /etc/systemd --no-folding

stow:
	$(STOW) .

unstow:
	$(UNSTOW) .

restow:
	$(RESTOW) .

stow-root:
	$(STOW_ROOT) -d system home

unstow-root:
	$(UNSTOW_ROOT) -d system home

stow-etc:
	$(STOW_SYSTEMD) -d system systemd

unstow-etc:
	$(UNSTOW_SYSTEMD) -d system systemd

stow-system: stow-root stow-etc
unstow-system: unstow-root unstow-etc
