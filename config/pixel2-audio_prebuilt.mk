#
# Copyright (C) 2020 ShapeShiftOS
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

# Copy all alarm sounds
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/ssos/audio/alarms,$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms)

# Copy all notification sounds
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/ssos/audio/notifications,$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications)

# Copy all ringtone sounds
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/ssos/audio/ringtones,$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones)

# Copy all UI sounds
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/ssos/audio/ui,$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui)

# Set default ringtone, notification and alarm
PRODUCT_PROPERTY_OVERRIDES += \
   ro.config.alarm_alert=Bright_morning.ogg \
   ro.config.ringtone=The_big_adventure.ogg \
   ro.config.notification_sound=Popcorn.ogg
