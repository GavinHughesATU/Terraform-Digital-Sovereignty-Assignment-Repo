policy "approved-regions" {
  source = "./approved-regions.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "provider-security" {
  source = "./provider-security.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "module-security" {
  source = "./module-security.sentinel"
  enforcement_level = "hard-mandatory"
}