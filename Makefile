###############################################################################
# Project structure
###############################################################################

BIN_DIR =					bin/
INSTALL_DIR =				$(HOME)/$(BIN_DIR)


BASH_GITHUB_SCRIPTS =		bash/github/clone_user\
							bash/github/initPublish\
							bash/github/newRepo
							
BASH_INS_PROG_SCRIPTS =		bash/install_program/cppcheck\
							bash/install_program/gcc\
							bash/install_program/maxima\
							bash/install_program/sigrok\
							bash/install_program/wine

BASH_LINUX_SCRIPTS =		bash/linux/grubBeauty\
							bash/linux/restorePermissions

BASH_PERSONAL_SCRIPTS =		bash/personal/lcd2\
							bash/personal/Saleae\
							bash/personal/uart\
							bash/personal/work

###############################################################################
# Phony rules
###############################################################################

# Make all
.PHONY: all
all:
	@echo "usage:"
	@echo
	@echo "'make all'        Help info"
	@echo "'make simulate'   Copy the most usefull scripts in $(BIN_DIR)"
	@echo "'make install'    Install the most usefull scripts in your system"
	@echo "'make clean'      Clean project generated files"
	@echo

.PHONY: clean
clean: ## Clean the $(TARGET_NAME) project
	@echo		-n "Cleaning project\t"
	@rm			-fR $(BIN_DIR)
	@echo		"OK"

simulate: ## Copy usefull scripts to bin
	@echo		"Copy to $(BIN_DIR)"
	@mkdir		-p $(BIN_DIR)
	@cp			-u $(BASH_GITHUB_SCRIPTS) $(BIN_DIR)
	@mkdir		-p $(BIN_DIR)install
	@cp			-u $(BASH_INS_PROG_SCRIPTS) $(BIN_DIR)install
	@cp			-u $(BASH_LINUX_SCRIPTS) $(BIN_DIR)
	@cp			-u $(BASH_PERSONAL_SCRIPTS) $(BIN_DIR)
	@echo		"Finished"

install: ## Install usefull scripts to bin
	@echo		"Installing to $(INSTALL_DIR)"
	@mkdir		-p $(INSTALL_DIR)
	@cp			-u $(BASH_GITHUB_SCRIPTS) $(INSTALL_DIR)
	@mkdir		-p $(INSTALL_DIR)install
	@cp			-u $(BASH_INS_PROG_SCRIPTS) $(INSTALL_DIR)install
	@cp			-u $(BASH_LINUX_SCRIPTS) $(INSTALL_DIR)
	@cp			-u $(BASH_PERSONAL_SCRIPTS) $(INSTALL_DIR)
	@echo		"Finished"