echo "Goodbye Bitch"

if [ ! -z "$NAME_AKS_CLUSTER" ];then
    touch /tmp/teste_aks
    echo "TESTE AKS SANDBOX DEPLOY"
    echo $$NAME_AKS_CLUSTER
else
    AKS_SETTINGS_FILE=""
    if [[ -f "aks.settings.yml" ]]; then
        AKS_SETTINGS_FILE="aks.settings.yml"
    elif [[ -f "aks.settings.yaml" ]]; then
        AKS_SETTINGS_FILE="aks.settings.yaml"
    else
        echo -e "\n#############################################"
        echo "Missing file aks.settings.yml for sandbox deployment"
        echo -e "#############################################\n"
        exit 1
    fi

fi