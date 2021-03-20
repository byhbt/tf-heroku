# Heroku Infrastructure 

Provider [document](https://registry.terraform.io/providers/heroku/heroku/latest/docs)

```
$ export HEROKU_EMAIL="example@mail.com"
$ export HEROKU_API_KEY="heroku_api_key"
$ terraform plan

```

# Requisites
- Heroku CLI latest version
- Terraform v0.14.5 


# Usage

Copy varibles file

```
cp terraform.tfvars.sample terraform.tfvars
```
Edit this variables file follow you own Heroku information.

Install Terrafor dependencies.

```
tf init
```

Generate execution plan.

```
tf plan
```

Execute the generated plan.

```
tf apply
```

The output of this script is the Heroku Git URL, now you can use it to push your existing source code.