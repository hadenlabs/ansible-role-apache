# Makefile for ansible-role-apache.

# Configuration.
SHELL = /bin/bash
ROOT_DIR = $(shell pwd)
BIN_DIR = $(ROOT_DIR)/bin
DATA_DIR = $(ROOT_DIR)/var
SCRIPT_DIR = $(ROOT_DIR)/script

WGET = wget

# Bin scripts
ANSIBLE_PROVISION = $(shell) $(SCRIPT_DIR)/provision.sh
ANSIBLE_DEPLOY = $(shell) $(SCRIPT_DIR)/deploy.sh
CLEAN = $(shell) $(SCRIPT_DIR)/clean.sh
GVM = $(shell) $(SCRIPT_DIR)/gvm.sh
GRIP = $(shell) $(SCRIPT_DIR)/grip.sh
INSTALL = $(shell) $(SCRIPT_DIR)/install.sh
PYENV = $(shell) $(SCRIPT_DIR)/pyenv.sh
TEST = $(shell) $(SCRIPT_DIR)/test.sh
SYNC = $(shell) $(SCRIPT_DIR)/sync.sh
WATCH = $(shell) $(SCRIPT_DIR)/watch.sh

ansible_provision:
	$(ANSIBLE_PROVISION)


ansible_deploy:
	$(ANSIBLE_DEPLOY)


clean:
	$(CLEAN)


deploy:
	$(ANSIBLE_PROVISION)
	$(ANSIBLE_DEPLOY)


distclean: clean
	rm -rf $(ROOT_DIR)/lib
	rm -rf $(ROOT_DIR)/*.egg-info
	rm -rf $(ROOT_DIR)/demo/*.egg-info


environment:
	$(PYENV)
	$(GVM)


grip:
	$(GRIP)


install:
	$(INSTALL)


roles:
	$(ROLES_ANSIBLE)


maintainer-clean: distclean
	rm -rf $(BIN_DIR)
	rm -rf $(ROOT_DIR)/lib/


test:
	$(TEST)


sync:
	$(SYNC)


watch:
	$(WATCH)
