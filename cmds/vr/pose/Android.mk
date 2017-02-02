# Copyright (C) 2008 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

sourceFiles := \
  pose.cpp

staticLibraries := \
  libdvrcommon \
  libsensor \
  libpdx_default_transport \

sharedLibraries := \
  libcutils \
  liblog

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(sourceFiles)
LOCAL_STATIC_LIBRARIES := $(staticLibraries)
LOCAL_SHARED_LIBRARIES := $(sharedLibraries)
LOCAL_MODULE := pose
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

ifeq ($(TARGET_BUILD_VARIANT),eng)
ALL_DEFAULT_INSTALLED_MODULES += pose
all_modules: pose
endif
