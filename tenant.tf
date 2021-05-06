terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
      version = "0.5.4"
    }
  }
}


provider "aci" {

 username = "saukotha"
 password = "cisco!123"
 url = "https://10.48.168.2"

}

resource "aci_tenant" "tenant" {
 name = "saukotha1"
 description = "Using Terraform"
}

resource "aci_vrf" "vrf" {
  tenant_dn = "${aci_tenant.tenant.id}"
  name = "vrf1"
}

resource "aci_bridge_domain" "bd" {
  tenant_dn = "${aci_tenant.tenant.id}"
  name = "bd1"
  description = "using terraform"
}

resource "aci_subnet" "subnet" {
  parent_dn = "${aci_bridge_domain.bd.id}"
  description = "using terraform"
  ip = "10.0.3.28/29"
  scope = ["shared"]

}
