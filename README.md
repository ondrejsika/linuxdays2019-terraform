# Terraform Talk Example @ LinuxDays 2019

    2019 Ondrej Sika <ondrej@ondrejsika.com>
    https://github.com/ondrejsika/linuxdays2019-react

If you need help or ask any question, feel free to send me mail to <ondrej@sika.io>.


## Slides

- <https://speakerdeck.com/ondrejsika/terraform-infrastructure-as-a-code>


## Example

```
(cd infra && terraform init)
(cd app && terraform init)

(cd infra && terraform plan)
(cd app && terraform plan)

(cd infra && terraform apply)
(cd app && terraform apply)

(cd infra && terraform destroy)
(cd app && terraform destroy)
```
