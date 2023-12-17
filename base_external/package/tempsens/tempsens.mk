################################################################################
#
# tempsens
#
################################################################################

TEMPSENS_VERSION = '9d2093549df4f8aa7cad203f4aac926a84aad6fc'
TEMPSENS_SITE = 'https://github.com/apichlkostner/tempsens.git'
TEMPSENS_SITE_METHOD = git
TEMPSENS_GIT_SUBMODULES = YES
TEMPSENS_INSTALL_TARGET = YES

define TEMPSENS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/src/dht20 $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/src/libdht20_lib.so $(TARGET_DIR)/usr/lib/
endef

$(eval $(cmake-package))