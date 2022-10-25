export MARA_PASSWORD=thisispassword
./pulumi/python/venv/bin/pulumi stack select --create dashtest10 -C pulumi/python/config
./pulumi/python/venv/bin/pulumi stack select --create dashtest10 -C pulumi/python/kubernetes/applications/sirius
./pulumi/python/venv/bin/pulumi stack select --create dashtest10 -C pulumi/python/kubernetes/secrets
./pulumi/python/venv/bin/pulumi config set certmgr:helm_timeout "600" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set kic-helm:fqdn "dashtest10.zathras.io" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set kic-helm:helm_timeout "600" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set kubernetes:kubeconfig "$HOME/.kube/config" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set kubernetes:infra_type "aws" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set kubernetes:cluster_name "dashtest10" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set logagent:helm_timeout "600" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set logstore:helm_timeout "600" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set prometheus:helm_timeout "600" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set prometheus:adminpass "${MARA_PASSWORD}" --secret -C pulumi/python/kubernetes/secrets -s dashtest10
./pulumi/python/venv/bin/pulumi config set sirius:accounts_pwd "${MARA_PASSWORD}" --secret -C pulumi/python/kubernetes/secrets -s dashtest10
./pulumi/python/venv/bin/pulumi config set sirius:demo_login_pwd "password" --secret -C pulumi/python/kubernetes/secrets -s dashtest10
./pulumi/python/venv/bin/pulumi config set sirius:demo_login_user "testuser" --secret -C pulumi/python/kubernetes/secrets -s dashtest10
./pulumi/python/venv/bin/pulumi config set sirius:ledger_pwd "${MARA_PASSWORD}" --secret -C pulumi/python/kubernetes/secrets -s dashtest10
./pulumi/python/venv/bin/pulumi config set aws:profile "${AWS_PROFILE}" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set aws:region "${AWS_DEFAULT_REGION}" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set eks:k8s_version "1.22" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set eks:instance_type "t2.large" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set eks:min_size "3" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set eks:max_size "12" -C pulumi/python/config -s dashtest10
./pulumi/python/venv/bin/pulumi config set eks:desired_capacity "3" -C pulumi/python/config -s dashtest10
