cat <<EOF >> vault-config.hcl
listener "tcp" {
address = "0.0.0.0:8200"
tls_disable = "true"
}

storage "raft" {
path = "./vault/data"
node_id = "node1"
}
cluster_addr = "http://127.0.0.1:8201"
api_addr = "http://127.0.0.1:8200"
EOF
