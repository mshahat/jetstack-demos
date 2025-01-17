export JS_ENTERPRISE_CREDENTIALS_FILE := /Users/riaz.mohamed/sandbox/gitprojects/clean/jetstackdemosv2/demos/js-enterprise-credentials-1.json


###########################
# Venafi Specific Variables
###########################

# Venafi TPP access token. You must have the Venafi platform up and running
export JS_VENAFI_TPP_ACCESS_TOKEN :=REPLACE-ME
export JS_VENAFI_TPP_REFRESH_TOKEN :=REPLACE-ME
export JS_VENAFI_TPP_REFRESH_TOKEN_EXPIRY :=REPLACE-ME

export JS_VENAFI_CLIENTID := cert-manager.io
export JS_CONTAINER_REGISTRY := eu.gcr.io/jetstack-secure-enterprise

export JS_VENAFI_TPP_URL :=REPLACE-ME # E.g. https://tpp.mydomain.com/vedsdk

#Reference to file that contains CA bundle in PEM format. This is the certchain to tpp.mydomain.com. venafi-tpp-server-ca.pem is in .gitignore 
export JS_VENAFI_TPP_CA_BUNDLE_PEM_FILE :=~/GitHub/demos/venafi-tpp-server-ca.pem
#Base64 encoding of the above
export JS_VENAFI_TPP_BASE64_ENCODED_CACERT :=REPLACE-ME
export JS_VENAFI_TPP_ZONE_PUBLIC_CA1 := REPLACE-ME # E.g. Certificates\\\\Kubernetes\\\\Public1
export JS_VENAFI_TPP_ZONE_PUBLIC_CA2 := REPLACE-ME # E.g. Certificates\\\\Kubernetes\\\\Public2

#Reference to file that contains CA bundle in PEM format for Private PKI. This is the root CA for PKI referenced in PRIVATE_CA$. 
#venafi-msca-ica-root.pem is in .gitignore 
export JS_VENAFI_INTERMEDIATE_CA_ROOT_PEM_FILE :=~/GitHub/demos/venafi-msca-ica-root.pem
export JS_VENAFI_TPP_ZONE_PRIVATE_CA1 := REPLACE-ME # E.g. Certificates\\Kubernetes\\Private1
export JS_VENAFI_TPP_ZONE_PRIVATE_CA2 := REPLACE-ME # E.g. Certificates\\Kubernetes\\Private2

#Location to sync certificates between Kubernetes and Venafi TPP
export JS_VENAFI_CERT_SYNC_POLICY_FOLDER := REPLACE-ME # E.g. Certificates\\\\Kubernetes\\\\Discovered

# Venafi API Key. Register for an account on ui.venafi.cloud for a key.
export JS_VENAFI_CLOUD_API_KEY :=REPLACE-ME

# Figure out escaping on your own !!. Using \\ here. Had to use \\\\ For Venafi TPP.
export JS_VENAFI_CLOUD_PUBLIC_ZONE_ID1 :=Demo\\demo
export JS_VENAFI_CLOUD_PUBLIC_ZONE_ID2 :=Demo\\demo

# Venafi Zone ID for CSI driver specific usecases.
# Due to escaping \\ becomes one \, so Demo\\\\demo becomes Demo\\demo
export JS_VENAFI_CLOUD_PRIVATE_ZONE_ID1 :=Demo\\\\demo
export JS_VENAFI_CLOUD_PRIVATE_ZONE_ID2 :=Demo\\\\demo

export JS_VENAFI_TPP_USERNAME := REPLACE-ME # E.g. user1
export JS_VENAFI_TPP_PASSWORD := REPLACE-ME # E.g. userpass

# Email for creating docker registry secret that holds Jetstack Secure enterprise access token
export JS_AIRGAPPED := false
export JS_DOCKER_REGISTRY_SECRET := venafi-jetstack-enterprise-key
export JS_DOCKER_REGISTRY_USERNAME := REPLACE_ME
export JS_DOCKER_REGISTRY_PASSWORD := REPLACE_ME
export JS_DOCKER_REGISTRY_EMAIL :=REPLACE_ME
export JS_DOCKER_REGISTRY_URL :=REPLACE_ME
export JS_EMAIL_ID_FOR_LE_CERT :=${JS_DOCKER_REGISTRY_EMAIL} #for LE certs

#DNS Specific variables
export JS_JETSTACKER_DOMAIN_NAME :=REPLACE_ME
export JS_K8S_CLUSTER_NAME :=jetstack-secure-demo-01


#--------START IMAGE VERSIONS AND HELM CHART VERSIONS -------------
# ENTERPRISE CERT MANAGER versions
# helm
export JS_CERT_MANAGER_VERSION := v1.11.0
# images
export JS_CERT_MANAGER_CONTROLLER_IMAGE_VERSION :=v1.11.0
export JS_CERT_MANAGER_WEBHOOK_IMAGE_VERSION :=v1.11.0
export JS_CERT_MANAGER_CAINJECTOR_IMAGE_VERSION :=v1.11.0
export JS_CERT_MANAGER_CTL_IMAGE_VERSION :=v1.11.0

# TRUST MANAGER versions
# helm
export JS_CERT_MANAGER_TRUST_VERSION= v0.4.0
# image
export JS_TRUST_MANAGER_IMAGE_VERSION :=v0.4.0

# APPROVER POLICY
# helm
export JS_POLICY_APPROVER_VERSION := v0.7.4
# image
export JS_APPROVER_POLICY_ENTERPRISE_IMAGE_VERSION :=v0.7.4


# CSI DRIVER
# helm
export JS_CERT_MANAGER_CSI_DRIVER_VERSION :=v0.5.0
#image
export JS_CERT_MANAGER_CSI_DRIVER_IMAGE_VERSION :=v0.5.0
export JS_CSI_NODE_DRIVER_REGISTRAR_IMAGE_VERSION :=v2.6.3
export JS_LIVENESSPROBE_IMAGE_VERSION :=v2.9.0

# CSI SPIFFE DRIVER
# helm
export JS_CERT_MANAGER_CSI_DRIVER_SPIFFE_VERSION :=v0.3.0
# image
export JS_CERT_MANAGER_CSI_DRIVER_SPIFFE_IMAGE_VERSION :=v0.3.0
export JS_CERT-MANAGER_CSI_DRIVER_SPIFFE_APPROVER_IMAGE_VERSION :=v0.3.0

# ENHANCED ISSUER
# helm
export JS_VENAFI_ENHANCED_ISSUER_VERSION := v0.3.3
# image
export JS_VENAFI_ENHANCED_ISSUER_IMAGE_VERSION :=v0.3.3

# JS OPERATOR
# helm
export JS_OPERATOR_VERSION :=v0.0.1-alpha.24
# image
export JS_OPERATOR_IMAGE_VERSION :=v0.0.1-alpha.24

# CERT-SYNC
# helm
export JS_VENAFI_CERT_SYNC_VERSION :=v0.2.0
# image
export JS_CERT_DISCOVERY_VENAFI_IMAGE_VERSION :=v0.2.0
export JS_KUBE_RBAC_PROXY_IMAGE_VERSION :=v0.14.0

# ISOLATED ISSUER
# Isolated issuer version
export JS_ISOLATED_ISSUER_VERSION :=v0.2.1

# ISTIO CSR
# helm
export JS_CERT_MANAGER_ISTIO_CSR_VERSION :=v0.6.0
# image
export JS_CERT_MANAGER_ISTIO_CSR_IMAGE_VERSION :=v0.6.0

# Istio version
export JS_ISTIO_VERSION :=1.17.1
export JS_ISTIO_SHORT_VERSION :=1.17

#OPEN SHIFT ROUTES
# image
export JS_CERT_MANAGER_OPEN_SHIFT_ROUTES_IMAGE_VERSION :=v0.5.0

#--------END  IMAGE VERSIONS AND HELM CHART VERSIONS -------------


# Jetstack Secure common settings
export JS_CLUSTER_TRUST_DOMAIN_NAME :=jetstack-dev
export JS_WORKLOAD_CERT_DURATION :=1h
export JS_ISOLATED_ISSUER_BINARY :=~/Downloads/isolated-issuer-darwin-arm64/isolated-issuer

# CSI Driver SPIFFE Cluster Issuer Name. This will be a cluster issuer
# For namespaced issuer, change the HelmChart to define Issuer kind and also update the signer name
export JS_CERT_MANAGER_CSI_DRIVER_SPIFFE_ISSUER_NAME :=jetstack-spiffe-ca-issuer

#ISTIO CSR Helm Chart Settings
export JS_ISTIO_CSR_PRESERVE_CERT_REQUESTS :=true
export JS_ISTIO_CSR_CERT_RENEW_BEFORE :=30m
export JS_ISTIO_CSR_CERT_PROVIDER :=cert-manager-istio-csr.jetstack-secure.svc
#ISTIO CSR Helm Chart Settings

#Google CAS Specific Settings 
export JS_GCP_PROJECT_ID :=REPLACE_ME
export JS_GCP_ZONE :=REPLACE_ME
export JS_GCP_REGION :=us-central1

export JS_GCP_CAS_POOL_TIER :=devops
export JS_GCP_CAS_POOL_NAME :=my-ca-pool
export JS_GCP_CAS_NAME :=my-google-cas

#AWS Specific Variables
export JS_AWS_PROFILE_NAME :=REPLACE_ME #set to none to use default
export JS_AWS_REGION :=us-east-1
export JS_AWS_PCA_ACCESS_KEY :=REPLACE_ME
export JS_AWS_PCA_SECRET_ACCESS_KEY :=REPLACE_ME
# arn:aws:acm-pca:us-east-2:1234567890000:certificate-authority/eeddd208-aa3b-bb4b-cc2c-zzzyyyxxxwwww
export JS_AWS_PCA_ARN :=REPLACE_ME
#kubectl cluster-info
export JS_KUBERNETES_HOST := REPLACE_ME

export JS_SAMPLE_APP_IMAGE := nginxdemos/nginx-hello

export JS_SAMPLE_TRUSTSTORE_APP_IMAGE := riazvm/jetstackdemos-truststore:1.3

export JS_OPENSHIFT_ROUTE_IMAGE := ghcr.io/cert-manager/cert-manager-openshift-routes:0.1.3

#Firefly config
export JS_VENAFI_FIREFLYCA_CONFIG_ID :=b45axxx0-xxxx-xxxx-xxxx-f78e8339xxxx
