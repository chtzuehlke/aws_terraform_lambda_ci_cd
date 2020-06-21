# aws_terraform_lambda_ci_cd

Sample:

    git checkout -b german

    vi tests/integration_test.sh 
    vi python/handler.py

    git commit -a -m "german message"
    git push origin german:german

    #Browser: open PR: creates temp AWS env (-> success)
    open https://github.com/chtzuehlke/aws_terraform_lambda_ci_cd/pull/new/german

    vi tests/integration_test.sh 
    vi python/handler.py
    vi terraform/terraform.tf 
    git commit -a -m "fixed spelling error"

    #update PR: updates temp AWS env (-> failed)
    git push origin german:german

    vi terraform/terraform.tf 
    git commit -a -m "fixed syntax error"

    #update PR: updates temp AWS env (-> success)
    git push origin german:german

    cd terraform
    terraform init && terraform workspace select german
    curl $(terraform output url)
  
    #Browser: close PR (merge to master): removes temp AWS env, updates AWS dev env (-> success), updates AWS test env (-> success)

Note to self:

1. GitHub / Settings / Moderation / "Limit to repository collaborators"
2. Enable Access Keys
3. Disable Access Keys after 23h ;-)
