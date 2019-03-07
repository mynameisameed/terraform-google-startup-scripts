/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
variable "enable_init_gsutil_crcmod_el" {
  description = "If not false, include stdlib::init_gsutil_crcmod_el() prior to executing startup-script-custom.  Call this function from startup-script-custom to initialize gsutil as per https://cloud.google.com/storage/docs/gsutil/addlhelp/CRC32CandInstallingcrcmod#centos-rhel-and-fedora Intended for CentOS, RHEL and Fedora systems."
  default     = "false"
}

variable "enable_get_from_bucket" {
  description = "If not false, include stdlib::setup_init_script() prior to executing startup-script-custom.  Requires gsutil in the PATH.  See also enable_init_gsutil_crcmod_el feature flag."
  default     = "false"
}

variable "enable_setup_init_script" {
  description = "If not false, include stdlib::setup_init_script() prior to executing startup-script-custom.   Call this function to load an init script from GCS into /etc/init.d and initialize it with chkconfig. This function depends on stdlib::get_from_bucket, so this input will be set to false if enable_get_from_bucket is false "
  default     = "false"
}
