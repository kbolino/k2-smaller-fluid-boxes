# mod properties
MOD_NAME := k2-smaller-fluid-boxes
MOD_VERSION := 0.1.1
MOD_CONTENTS := data-updates.lua

# filename/path vars
MOD_ZIP_DIR := $(MOD_NAME)_$(MOD_VERSION)
MOD_ZIP_FILE := $(MOD_NAME)_$(MOD_VERSION).zip
OUTPUT_DIR := output
ZIP_OUTPUT_DIR := $(OUTPUT_DIR)/$(MOD_ZIP_DIR)

# commands
CMD_CD ?= cd
CMD_CP_PARENTS ?= cp --parents
CMD_JQ ?= jq
CMD_MKDIR_P ?= mkdir -p
CMD_RM_RF ?= rm -rf
CMD_TOUCH ?= touch
CMD_ZIP_R ?= zip -r

# disable built-in and implicit rules
MAKEFLAGS += --no-builtin-rules
.SUFFIXES:

# default target
.PHONY: zip
zip: $(OUTPUT_DIR)/$(MOD_ZIP_FILE)

# clean target
.PHONY: clean
clean:
	$(CMD_RM_RF) $(OUTPUT_DIR)

# dependent targets for zip
$(OUTPUT_DIR)/$(MOD_ZIP_FILE): $(ZIP_OUTPUT_DIR) $(ZIP_OUTPUT_DIR)/info.json
	$(CMD_CD) $(OUTPUT_DIR) && $(CMD_ZIP_R) $(MOD_ZIP_FILE) $(MOD_ZIP_DIR)

$(ZIP_OUTPUT_DIR): $(MOD_CONTENTS)
	$(CMD_MKDIR_P) $@
	$(CMD_CP_PARENTS) $^ $@
	$(CMD_TOUCH) $@

$(ZIP_OUTPUT_DIR)/info.json: info-template.json
	$(CMD_JQ) '. + {"name": "$(MOD_NAME)", "version": "$(MOD_VERSION)"}' $< > $@
