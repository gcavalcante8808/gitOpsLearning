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
