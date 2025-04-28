# Terragrunt demo

https://terragrunt.gruntwork.io/docs/getting-started/quick-start/
https://terragrunt.gruntwork.io/docs/features/units/


## Deploy DEV environment

```pwsh
az login

cd .\environment\dev\
terragrunt run-all apply

terragrunt run-all destroy
```