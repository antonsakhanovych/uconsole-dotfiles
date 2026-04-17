STOW   := stow -S -t ~ --no-folding
UNSTOW := stow -D -t ~ --no-folding
RESTOW := stow -R -t ~ --no-folding

stow:
	$(STOW) .

unstow:
	$(UNSTOW) .

restow:
	$(RESTOW) .
