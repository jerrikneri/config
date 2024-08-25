# AMD PVE
alias pssh="ssh $PROXMOX_HOST@$PROXMOX_IP"

#alias pveup="wakeonlan -i 192.168.1.255 -p 7 $PROXMOX_MA"
alias pveup="wakeonlan $PROXMOX_MA"

# Mac Mini PVE
alias mmpve="ssh $MM_PVE_HOST@$MM_PVE_IP"

# Ubuntu Server
alias pve-ubuntu="ssh $K8S_HOST@$PVE_UBUNTU_IP"
alias pssh-u-j="ssh $MM_PVE_HOST@$PVE_UBUNTU_JUMP_IP"

# K8S
alias k8s-c="ssh $K8S_HOST@$K8S_CTLR_IP"
alias k8s-1="ssh $K8S_HOST@$K8S_NODE_1_IP"
alias k8s-2="ssh $K8S_HOST@$K8S_NODE_2_IP"
alias k8s-3="ssh $K8S_HOST@$K8S_NODE_3_IP"

# K3S
alias k3s-c="ssh $K8S_HOST@$K3S_CTLR_IP"
alias k3s-1="ssh $K8S_HOST@$K3S_NODE_1_IP"
alias k3s-2="ssh $K8S_HOST@$K3S_NODE_2_IP"

alias k8s-nfs="ssh $K8S_HOST@$K8S_NFS_IP"

pve() {
  case "$1" in
  mm)
    mmpve
    ;;
  j)
    pssh-u-j
    ;;
  a)
    pssh
    ;;
  u)
    pve-ubuntu
    ;;
  k8c)
    k8s-c
    ;;
  k8n1)
    k8s-1
    ;;
  k8n2)
    k8s-2
    ;;
  k8n3)
    k8s-3
    ;;
  k3c)
    k3s-c
    ;;
  k3n1)
    k3s-1
    ;;
  k3n2)
    k3s-2
    ;;
  nfs)
    k8s-nfs
    ;;
  *)
    echo "Usage: $0 {u|mm|j|a|k8c|k8n1|k8n2|k8n3|k3c|k3n1|k3n2|nfs}"
    return 1
    ;;
  esac
}

alias remote-wakeonlan="ssh $MM_PVE_HOST@$PVE_UBUNTU_JUMP_IP \"wakeonlan $PROXMOX_MA\""
