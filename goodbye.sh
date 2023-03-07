echo "Goodbye Bitch"

if [ ! -z $TESTE ];then
    echo "TESTE AKS SANDBOX DEPLOY - export"
    echo "Testando a variavel $TESTE"
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