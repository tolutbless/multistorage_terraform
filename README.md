# Create multiple Azure Storage Accounts

## a bad way
at this point we have a lot of duplicate code, which is very bad code.
It is prone to errors, when changes are made. e.g. you want to change
the location or the account_tier, when you must change it multiple times
and chances are that one is missed. Or you want more storage accounts.


## a better way
the name of the account is given via the file account_names.tfvars
and then stored in a list called account_names.

terraform plan / apply is called like this

$ terraform plan -var-file="account_names.tfvars"

now you can use the "count" pattern of terraform.
Terraform has two useful functions for that to achieve,
it is possible to get the length of a list and to access the
nth element of a list.
