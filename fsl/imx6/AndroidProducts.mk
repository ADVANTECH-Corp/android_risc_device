#Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# This file should set PRODUCT_MAKEFILES to a list of product makefiles
# to expose to the build system.  LOCAL_DIR will already be set to
# the directory containing this file.
#
# This file may not rely on the value of any variable other than
# LOCAL_DIR; do not use any conditionals, and do not look up the
# value of any variable that isn't set in this file or in a file that
# it includes.
#

# Copied from build/target/product/AndroidProducts.mk

PRODUCT_MAKEFILES := \
  $(LOCAL_DIR)/evk_6sl.mk \
  $(LOCAL_DIR)/sabreauto_6q.mk \
  $(LOCAL_DIR)/sabresd_6dq.mk \
  $(LOCAL_DIR)/sabresd_6sx.mk \
  $(LOCAL_DIR)/sabreauto_6sx.mk \
  $(LOCAL_DIR)/evk_6ul.mk \
  $(LOCAL_DIR)/rsb_4410_a1.mk \
  $(LOCAL_DIR)/rsb_4410_a2.mk \
  $(LOCAL_DIR)/rsb_4411_a1.mk \
  $(LOCAL_DIR)/rom_3420_a1.mk \
  $(LOCAL_DIR)/rom_7421_a1.mk \
  $(LOCAL_DIR)/rsb_6410_a1.mk \
  $(LOCAL_DIR)/rsb_6410_a2.mk \
  $(LOCAL_DIR)/rom_5420_b1.mk \
  $(LOCAL_DIR)/epcrs_200_a1.mk \
  $(LOCAL_DIR)/ubc_220_a1.mk
