SHELL = /bin/bash
.SHELLFLAGS = -euox pipefail -c
.RECIPEPREFIX +=

flux-setup:
    helm install --name fluxlearning \
    --set rbac.create=true \
    --set helmOperator.create=true \
    --set git.url=git@github.com:gcavalcante8808/gitOpsLearning \
    --namespace gitops-flux \
    fluxcd/flux

generate-flux-identity:
    fluxctl identity --k8s-fwd-ns gitops-flux

insert-flux-public-key-as-a-deploy-key-for-repo:
    echo "TODO"
    exit 1
