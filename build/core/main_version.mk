# Version of the ROM
REVENGEOS_CODENAME := Pasta
REVENGEOS_REVISION := 2.2
CAF_REVISION := LA.UM.7.3.r1-06300-sdm845.0

ifndef REVENGEOS_BUILDTYPE
  REVENGEOS_BUILDTYPE := UNOFFICIAL
endif

TARGET_PRODUCT_SHORT := $(TARGET_PRODUCT)
TARGET_PRODUCT_SHORT := $(subst revengeos_,,$(TARGET_PRODUCT_SHORT))

REVENGEOS_VERSION := $(REVENGEOS_REVISION)-$(REVENGEOS_CODENAME)-$(REVENGEOS_BUILDTYPE)-$(TARGET_PRODUCT_SHORT)-$(shell date -u +%Y%m%d-%H%M)

ADDITIONAL_BUILD_PROPERTIES += BUILD_DISPLAY_ID="$(BUILD_ID)-$(shell whoami)@$(shell hostname)"

# Apply it to build.prop
ADDITIONAL_BUILD_PROPERTIES += \
    ro.caf.revision=$(CAF_REVISION) \
    ro.revengeos.version=RevengeOS-$(REVENGEOS_VERSION)
