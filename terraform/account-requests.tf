module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "fcong922+aftCreation@gmail.com"
    AccountName               = "AFT Created Account"
    ManagedOrganizationalUnit = "Labs" 
    SSOUserEmail              = "fcong922+aftCreation@gmail.com"
    SSOUserFirstName          = "AFT Created"
    SSOUserLastName           = "Account"
  }

  account_tags = {
    "ABC:Owner"       = "myname@mycompany.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}
module "import-account-1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "fcong922+Lab@gmail.com"
    AccountName               = "Lab Account"
    ManagedOrganizationalUnit = "test" 
    SSOUserEmail              = "fcong922+Lab@gmail.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "User"
  }
  account_tags = {
    "ABC:Owner"       = "myname@mycompany.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }
  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)2"
  }
  custom_fields = {
    alternate_contact = jsonencode(
      {
        "billing"= {
          "email-address" = "billing@mycompany.com",
          "name"          = "Account Receiveable",
          "phone-number"  = "+11234567890",
          "title"         = "Billing Department"
        },
        "operations"= {
          "email-address" = "ops@mycompany.com",
          "name"          = "Operations 24/7",
          "phone-number"  = "+11234567890",
          "title"         = "DevOps Team"
        },
        "security"= {
          "email-address" = "soc@mycompany.com",
          "name"          = "Security Ops Center",
          "phone-number"  = "+11234567890",
          "title"         = "SOC Team"
        }
      }
    )
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}
module "account_request_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "fcong922+aftCreation2@gmail.com"
    AccountName               = "Test Account"
    ManagedOrganizationalUnit = "Labs" 
    SSOUserEmail              = "fcong922+aftCreation2@gmail.com"
    SSOUserFirstName          = "Jane"
    SSOUserLastName           = "Doe"
  }

  account_tags = {
    "ABC:Owner"       = "myname@mycompany.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}
module "account_request_03" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "fcong922+lab3@gmail.com"
    AccountName               = "Lab Account"
    ManagedOrganizationalUnit = "test" 
    SSOUserEmail              = "fcong922+lab3@gmail.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "User"
  }
  account_tags = {
    "ABC:Owner"       = "myname@mycompany.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }
  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)3"
  }
  custom_fields = {
    alternate_contact = jsonencode(
      {
        "billing"= {
          "email-address" = "billing@mycompany.com",
          "name"          = "Account Receiveable",
          "phone-number"  = "+11234567890",
          "title"         = "Billing Department"
        },
        "operations"= {
          "email-address" = "ops@mycompany.com",
          "name"          = "Operations 24/7",
          "phone-number"  = "+11234567890",
          "title"         = "DevOps Team"
        },
        "security"= {
          "email-address" = "soc@mycompany.com",
          "name"          = "Security Ops Center",
          "phone-number"  = "+11234567890",
          "title"         = "SOC Team"
        }
      }
    )
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}
module "demo_account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "fcong+ctdemo@amazon.com"
    AccountName               = "Demo Account"
    ManagedOrganizationalUnit = "Labs" 
    SSOUserEmail              = "fcong+ctdemo@amazon.com"
    SSOUserFirstName          = "Jane"
    SSOUserLastName           = "Doe"
  }

  account_tags = {
    "ABC:Owner"       = "myname@mycompany.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Demo"
    change_reason       = "Create an AWS account via AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}
module "demo_account_request_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "fcong+ctdemo2@amazon.com"
    AccountName               = "Demo Account2"
    ManagedOrganizationalUnit = "Labs" 
    SSOUserEmail              = "fcong+ctdemo2@amazon.com"
    SSOUserFirstName          = "Jane"
    SSOUserLastName           = "Doe"
  }

  account_tags = {
    "ABC:Owner"       = "myname@mycompany.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Demo2"
    change_reason       = "Create an AWS account via AWS Control Tower Account Factory for Terraform (AFT)2"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}
