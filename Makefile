all $(filter-out all,$(MAKECMDGOALS)):
	@echo "NOTICE: This Makefile is provided for your convienence."
	@echo "        It is *highly* recommended that you use redo."
	@+./do -c "$@"
.PHONY: $(MAKECMDGOALS) all
