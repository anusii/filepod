########################################################################
#
# Makefile for FilePod
#
# Copyright (c) Graham.Williams@togaware.com
#
# License: Creative Commons Attribution-ShareAlike 4.0 International.
#
########################################################################

# App is often the current directory name.

APP=$(shell pwd | xargs basename)
VER = $(shell egrep '^version:' pubspec.yaml | cut -d' ' -f2 | cut -d'+' -f1)
DATE=$(shell date +%Y-%m-%d)

DEST=/var/www/html/$(APP)

REPO=solidcommunity.au
RLOC=/var/www/html/installers/
DWLD=https://$(REPO)/installers/

########################################################################
# Supported Makefile modules.

INC_BASE=support

INC_DOCKER=skip
INC_MLHUB=skip
INC_WEBCAM=skip

INC_MODULE=$(INC_BASE)/modules.mk

ifneq ("$(wildcard $(INC_MODULE))","")
  include $(INC_MODULE)
endif

########################################################################
# HELP

define HELP
$(APP):

  ginstall   After a github build download bundles and upload to $(REPO)

  local	     Install to $(HOME)/.local/share/$(APP)
    tgz	     Upload the installer to $(REPO)
  apk	     Upload the installer to $(REPO)

endef
export HELP

help::
	@echo "$$HELP"

########################################################################
# LOCAL TARGETS

clean::
	rm -f README.html

local: tgz
	tar zxvf installers/$(APP).tar.gz -C $(HOME)/.local/share/

tgz::
	chmod a+r installers/$(APP)*.tar.gz
	rsync -avzh installers/$(APP)*.tar.gz $(REPO):/var/www/html/installers/
	ssh $(REPO) chmod -R go+rX /var/www/html/installers/
	ssh $(REPO) chmod go=x /var/www/html/installers/

apk::
	rsync -avzh installers/$(APP).apk $(REPO):$(RLOC)
	ssh $(REPO) chmod a+r $(RLOC)$(APP).apk
	mv -f installers/$(APP)-*.apk installers/ARCHIVE/
	rm -f installers/$(APP).apk
	@echo ''

appbundle::
	rsync -avzh installers/$(APP).aab $(REPO):$(RLOC)
	ssh $(REPO) chmod a+r $(RLOC)$(APP).aab
	mv -f installers/$(APP)-*.aab installers/ARCHIVE/
	rm -f installers/$(APP).aab
	@echo ''

.PHONY: upload
upload:
	(cd installers; make ginstall)
	@echo ''

.PHONY: ginstall
ginstall: upload apk appbundle
