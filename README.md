# Introduction

Heroku Provider [document](https://registry.terraform.io/providers/heroku/heroku/latest/docs).

This script will help you initialize:
- Dyno
- PostgresDB (hobby plan)
- Redis (hobby plan)


# Prerequisites
- Heroku CLI latest version
- Terraform `v0.14.5`

# Usage

Step 1: Copy the variable file

```
cp terraform.tfvars.sample terraform.tfvars
```

Step 2: Update the variables inside the file, follow you own Heroku information.
- Heroku API credentials in `terraform.tfvars.sample`
- Application environment variables `main.tf` 

Step 3: Install Terraform dependencies.

```
tf init
```

Step 4: Generate execution plan.

```
tf plan
```

Step 5: Execute the generated plan.

```
tf apply
```

The output of this script is the Heroku Git URL, now you can use it to push your existing source code in order to deploy application to Heroku. 🚀

Notice: It could take around 3-5 minutes to finish the script.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
