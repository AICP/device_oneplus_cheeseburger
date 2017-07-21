ifeq ($(BOARD_BUILD_OP5_CAMERA),true)
  $(info Welcome to the HAL3 party!)
  include $(call all-subdir-makefiles)
endif