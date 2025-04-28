# Terragrunt demo

https://terragrunt.gruntwork.io/docs/getting-started/quick-start/

## Deploy DEV environment

```pwsh
az login

cd .\environment\dev\
terragrunt run-all apply

terragrunt run-all destroy
```