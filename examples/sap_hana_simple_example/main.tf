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

provider "google" {
  version = "~> 1.18.0"
  region  = "${var.region}"
}

module "gcp_sap_hana" {
  source                = "../../modules/sap_hana"
  subnetwork            = "${var.subnetwork}"
  linux_image_family    = "${var.linux_image_family}"
  linux_image_project   = "${var.linux_image_project}"
  instance_name         = "${var.instance_name}"
  instance_type         = "${var.instance_type}"
  disk_type             = "${var.disk_type}"
  project_id            = "${var.project_id}"
  region                = "${var.region}"
  service_account_email = "${var.service_account_email}"
  boot_disk_type        = "${var.boot_disk_type}"
  boot_disk_size        = "${var.boot_disk_size}"
  autodelete_disk       = "true"
  pd_ssd_size           = "${var.pd_ssd_size}"

  sap_hana_deployment_bucket = "${var.sap_hana_deployment_bucket}"
  sap_deployment_debug       = "false"

  post_deployment_script = "${var.post_deployment_script}"

  startup_script           = "${var.startup_script}"
  sap_hana_sid             = "D10"
  sap_hana_instance_number = 10
  sap_hana_sidadm_password = "Google123"
  sap_hana_system_password = "Google123"
  sap_hana_sidadm_uid      = 900
  sap_hana_sapsys_gid      = 900
}
