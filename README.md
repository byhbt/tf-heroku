# Introduction

Provider [document](https://registry.terraform.io/providers/heroku/heroku/latest/docs)

# Prerequisites
- Heroku CLI latest version
- Terraform v0.14.5 

# Usage

Step 1: Copy the variable file

```
cp terraform.tfvars.sample terraform.tfvars
```

Step 2: Update the variables inside the file, follow you own Heroku information (app name, API key, email...)

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

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
