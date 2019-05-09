# Variables
COMPARE ?= 1

# Targets
VERSIONS := us
fmt_target = ssb64.$(strip $(1))
TARGETS := $(foreach v, $(VERSIONS), $(call fmt_target, $(v)).z64)

# Directories
TUP_DIR = game
fmt_build_dir = $(strip $(TUP_DIR))/build-$(strip $(1))
BUILD_DIRS := $(foreach v, $(VERSIONS), $(call fmt_build_dir, $(v)))
CONFIG_DIR = configs
fmt_tup_config = $(strip $(CONFIG_DIR))/$(strip $(1)).config

# Programs
TUP := tup
RUN_TUP := cd $(TUP_DIR); $(TUP)
SHA1SUM := shasum

#------------------------------------------------------------------------------#
### Commands

# defer actual building to tup
# by default, all versions are built, as that's how tup works
all: | $(BUILD_DIRS)
	$(RUN_TUP)
ifeq ($(COMPARE), 1) 
	@$(SHA1SUM) -c $(subst z64,sha1,$(TARGETS))
endif

clean:
	rm -rf $(BUILD_DIRS)

## Create rules for initializing a tup variant (game version)
## can call `make VERSION` to build only that version

# $(call TUPVARIANT, version)
define TUPVARIANT
$(call fmt_build_dir, $(1)):
	$(RUN_TUP) variant $(call fmt_tup_config, $(1))

$(1): |$(call fmt_build_dir, $(1))
	$(RUN_TUP) $(notdir $(call fmt_build_dir, $(1)))
ifeq ($(COMPARE), 1) 
	$(SHA1SUM) -c $(call fmt_target, $(v)).sha1 
endif
endef

$(foreach v, $(VERSIONS), $(eval $(call TUPVARIANT, $(v))))

# maybe generate the tup rules file? to avoid double defining CC, AS, etc.?

.PHONY: all clean $(VERSIONS)

# Debug Print [`make print-VARIABLE`]
print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
