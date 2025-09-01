cat >startup.sh <<SCRIPT
#!/bin/bash

mkdir -p /root/.ssh
cat >>/root/.ssh/authorized_keys <<"EOF"
$(cat ~/.ssh/id_rsa.pub 2>/dev/null)
$(cat ~/.ssh/id_ecdsa.pub 2>/dev/null)
$(cat ~/.ssh/id_ecdsa_sk.pub 2>/dev/null)
$(cat ~/.ssh/id_ed25519.pub 2>/dev/null)
$(cat ~/.ssh/id_ed25519_sk.pub 2>/dev/null)
$(cat ~/.ssh/id_xmss.pub 2>/dev/null)
$(cat ~/.ssh/id_dsa.pub 2>/dev/null)

sudo apt update
sudo apt install nodejs npm

curl -LsSf https://astral.sh/uv/install.sh | sh

npm install -g @anthropic-ai/claude-code

EOF
SCRIPT
