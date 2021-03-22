# Heroku Infrastructure 

Provider [document](https://registry.terraform.io/providers/heroku/heroku/latest/docs)

# Requisites
- Heroku CLI latest version
- Terraform v0.14.5 

# Usage

Copy the variable file.

```
cp terraform.tfvars.sample terraform.tfvars
```

Update the variables inside the file, follow you own Heroku information (app name, API key, email...)

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
