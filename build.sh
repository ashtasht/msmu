#!/bin/bash

cat /dev/null > msmu

echo "#!/bin/bash" >> msmu
echo "me=\$(cd \"\$(dirname \"\$0\")\"; pwd)/\"\$(basename \"\$0\")\"" >> msmu
echo "cd \$(mktemp -d)" >> msmu
echo "tail -n+32 \"\$me\" | tar zx" >> msmu
echo "" >> msmu
echo "case \"\$1\" in" >> msmu
echo "  \"append\")" >> msmu
echo "    ./append.sh \$2 ;;" >> msmu
echo "  \"current\")" >> msmu
echo "    ./current.sh ;;" >> msmu
echo "  \"getpid\")" >> msmu
echo "    ./getpid.sh ;;" >> msmu
echo "  \"init\")" >> msmu
echo "    ./init.sh ;;" >> msmu
echo "  \"list\")" >> msmu
echo "    ./list.sh \$2 \$3 ;;" >> msmu
echo "  \"next\")" >> msmu
echo "    ./next.sh ;;" >> msmu
echo "  \"pause\")" >> msmu
echo "    ./pause.sh ;;" >> msmu
echo "  \"play\")" >> msmu
echo "    ./play.sh \$2 ;;" >> msmu
echo "  \"queue\")" >> msmu
echo "    ./queue.sh ;;" >> msmu
echo "  \"quit\")" >> msmu
echo "    ./quit.sh ;;" >> msmu
echo "  *)" >> msmu
echo "    echo \"Usage: \$0 {append|current|getpid|init|list|next|pause|play|queue|quit}\"" >> msmu
echo "    exit -1" >> msmu
echo "esac" >> msmu
echo "exit" >> msmu

chmod +x msmu

cd src
tar zc * >> ../msmu
