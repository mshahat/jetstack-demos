###########################
# Venafi Specific Variables
###########################


# Venafi TPP access token. You must have the Venafi platform up and running
export JS_VENAFI_TPP_ACCESS_TOKEN :=REPLACE-ME

export JS_VENAFI_TPP_URL :=REPLACE-ME # E.g. https://tpp.mydomain.com/vedsdk

#Reference to file that contains CA bundle in PEM format. Referenced file below is in .gitignore 
export JS_VENAFI_TPP_CA_BUNDLE_PEM_FILE :=./approver-policy/ca.crt
#Base64 encoding of the above
export JS_VENAFI_TPP_BASE64_ENCODED_CACERT :=REPLACE_ME
export JS_VENAFI_TPP_ZONE_PUBLIC_CA1 := REPLACE-ME # E.g. Certificates\\\\Kubernetes\\\\Public1
export JS_VENAFI_TPP_ZONE_PUBLIC_CA2 := REPLACE-ME # E.g. Certificates\\\\Kubernetes\\\\Public2

export JS_VENAFI_TPP_ZONE_PRIVATE_CA1 := REPLACE-ME # E.g. Certificates\\Kubernetes\\Private1
export JS_VENAFI_TPP_ZONE_PRIVATE_CA2 := REPLACE-ME # E.g. Certificates\\Kubernetes\\Private2

#Location to sync certificates between Kubernetes and Venafi TPP
export JS_VENAFI_CERT_SYNC_POLICY_FOLDER := REPLACE-ME # E.g. Certificates\\\\Kubernetes\\\\Discovered

# Venafi API Key. Register for an account on ui.venafi.cloud for a key.
export JS_VENAFI_CLOUD_API_KEY :=REPLACE-ME

# Due to escaping \\ becomes one \, so Demo\\\\demo becomes Demo\\demo
export JS_VENAFI_CLOUD_PUBLIC_ZONE_ID1 :=Demo\\\\demo
export JS_VENAFI_CLOUD_PUBLIC_ZONE_ID2 :=Demo\\\\demo

# Venafi Zone ID for CSI driver specific usecases.
# Due to escaping \\ becomes one \, so Demo\\\\demo becomes Demo\\demo
export JS_VENAFI_CLOUD_PRIVATE_ZONE_ID1 :=Demo\\\\demo
export JS_VENAFI_CLOUD_PRIVATE_ZONE_ID2 :=Demo\\\\demo

export JS_VENAFI_TPP_USERNAME := REPLACE-ME # E.g. user1
export JS_VENAFI_TPP_PASSWORD := REPLACE-ME # E.g. userpass

export JS_VENAFI_PEM_ENCODED_CA_CHAIN_FILE_FOR_ISOLATED_ISSUER :=REPLACE_ME

export JS_DOCKER_EMAIL :=REPLACE_ME

#Component versions
# cert-manager
export JS_CERT_MANAGER_VERSION :=v1.9.1
# cert-discovery-venafi
export JS_VENAFI_CERT_SYNC_VERSION :=v0.1.0
# approver policy
export JS_POLICY_APPROVER_VERSION :=v0.4.0-0
# Isolated issuer version
export JS_ISOLATED_ISSUER_VERSION :=v0.0.1-alpha.2

#DNS Specific variables
export JS_JETSTACKER_DOMAIN_NAME :=REPLACE_ME

#ISTIO CSR Helm Chart Settings

#Default cert manager API Group 
export JS_CERT_MANAGER_DEF_ISSUER_GROUP :=cert-manager.io
export JS_CERT_MANAGER_DEF_ISSUER_KIND :=Issuer
#Google CAS issuer API Group 
export JS_CERT_MANAGER_CAS_ISSUER_GROUP :=cas-issuer.jetstack.io
export JS_CERT_MANAGER_CAS_ISSUER_KIND :=GoogleCASIssuer
#AWS PCA issuer API Group 
export JS_CERT_MANAGER_PCA_ISSUER_GROUP :=awspca.cert-manager.io
export JS_CERT_MANAGER_PCA_ISSUER_KIND :=AWSPCAIssuer

export JS_ISTIO_CSR_PRESERVE_CERT_REQUESTS :=true
export JS_ISTIO_CSR_CERT_DURATION :=1h
export JS_ISTIO_CSR_WORKLOAD_CERT_DURATION :=1h
export JS_ISTIO_CSR_ISTIOD_CERT_DURATION :=1h
export JS_ISTIO_CSR_ISTIOD_CERT_RENEW_BEFORE :=30m
export JS_ISTIO_CSR_ISTIOD_CERT_MAX_CERT_DURATION :=2h
#ISTIO CSR Helm Chart Settings


#Google CAS Specific Settings 
export JS_GCP_PROJECT_ID :=REPLACE_ME
export JS_GCP_ZONE :=REPLACE_ME
export JS_GCP_CAS_POOL_TIER :=devops
export JS_GCP_CAS_POOL_NAME :=jetstack-ca-pool-devops
export JS_GCP_CAS_NAME :=jetstack-google-cas-aug-01-2022-1

#AWS Specific Variables
export JS_AWS_PROFILE_NAME :=REPLACE_ME
export JS_AWS_PCA_REGION :=us-east-1
export JS_AWS_PCA_ACCESS_KEY :=REPLACE_ME
export JS_AWS_PCA_SECRET_ACCESS_KEY :=REPLACE_ME
# arn:aws:acm-pca:us-east-2:1234567890000:certificate-authority\\/eeddd208-aa3b-bb4b-cc2c-zzzyyyxxxwwww
## Add `\\` in front of a `/` to escape. 
export JS_AWS_PCA_ARN :=REPLACE_ME

