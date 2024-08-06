/**
 * Copyright 2022 Google LLC
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
#
# Version:    DATETIME_OF_BUILD
#
module "sap_db2" {
  source = "https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_db2/sap_db2_module.zip"
  #
  # By default, this source file uses the latest release of the terraform module
  # for SAP on Google Cloud.  To fix your deployments to a specific release
  # of the module, comment out the source property above and uncomment the source property below.
  #
  # source = "https://storage.googleapis.com/cloudsapdeploy/terraform/DATETIME_OF_BUILD/terraform/sap_db2/sap_db2_module.zip"
  #
  # Fill in the information below
  #
  ##############################################################################
  ## MANDATORY SETTINGS
  ##############################################################################
  # General settings
  project_id          = "PROJECT_ID"          # example: my-project-x
  zone                = "ZONE"                # example: us-east1-b
  machine_type        = "MACHINE_TYPE"        # example: n1-highmem-32
  subnetwork          = "SUBNETWORK"          # example: default
  linux_image         = "LINUX_IMAGE"         # example: rhel-8-4-sap-ha
  linux_image_project = "LINUX_IMAGE_PROJECT" # example: rhel-sap-cloud

  instance_name = "VM_NAME"          # example: db2-instance
  db2_sid       = "DB2_DATABASE_SID" # example: ID0

  ##############################################################################
  ## OPTIONAL SETTINGS
  ##   - default values will be determined/calculated
  ##############################################################################
  # db2_sid_size         = DB_SID_DISK_SIZE      # default is 8, minimum is 8
  # db2_home_size        = HOME_DISK_SIZE        # default is 8, minimum is 8
  # db2_dump_size        = DUMP_DISK_SIZE        # default is 8, minimum is 8
  # db2_sap_temp_size    = SAP_TEMP_DISK_SIZE    # default is 8, minimum is 8
  # db2_sap_data_size    = SAP_DATA_DISK_SIZE    # default is 30, minimum is 30
  # db2_sap_data_ssd     = true_or_false         # default is true
  # db2_log_size         = LOG_DISK_SIZE         # default is 8, minimum is 8
  # db2_log_ssd          = true_or_false         # default is true
  # db2_backup_size      = BACKUP_DISK_SIZE      # default is 0, minimum is 0

  # usr_sap_size         = USR_SAP_DISK_SIZE     # default is 0, minimum is 0
  # sap_mnt_size         = SAP_MNT_DISK_SIZE     # default is 0, minimum is 0
  # swap_size            = SWAP_SIZE             # default is 0, minimum is 0
  # network_tags         = [ "TAG_NAME" ]        # default is an empty list
  # public_ip            = true_or_false         # default is true
  # service_account      = ""                    # default is an empty string
  # sap_deployment_debug = true_or_false         # default is false
  # reservation_name     = ""                    # default is an empty string
}