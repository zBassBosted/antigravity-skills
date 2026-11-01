#!/bin/bash
set -e

echo "======================================================================="
echo "    INSTALADOR DE SKILLS - GOOGLE ANTIGRAVITY & GEMINI CLI"
echo "======================================================================="
echo ""
echo "Escolha o modo de instalacao:"
echo "1) Instalar como Skills Globais (~/.gemini/skills)"
echo "2) Instalar como Plugin Completo (~/.gemini/config/plugins/ag-kit)"
echo "3) Instalar no projeto atual (.agents/skills)"
echo ""
read -p "Escolha uma opcao (1, 2 ou 3): " opcao

if [ "$opcao" == "1" ]; then
    mkdir -p ~/.gemini/skills
    cp -r skills/* ~/.gemini/skills/
    echo "[SUCESSO] Todas as skills foram instaladas em ~/.gemini/skills!"
elif [ "$opcao" == "2" ]; then
    mkdir -p ~/.gemini/config/plugins/ag-kit
    cp -r * ~/.gemini/config/plugins/ag-kit/
    echo "[SUCESSO] Plugin AG Kit instalado com sucesso!"
elif [ "$opcao" == "3" ]; then
    mkdir -p .agents/skills
    cp -r skills/* .agents/skills/
    echo "[SUCESSO] Skills copiadas para .agents/skills!"
else
    echo "Opcao invalida."
fi
