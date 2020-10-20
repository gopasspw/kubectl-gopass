# kubectl-gopass

A [plugin for kubectl](https://kubernetes.io/docs/tasks/extend-kubectl/kubectl-plugins/) to support reading and writing secrets directly from/to [gopass](https://github.com/gopasspw/gopass).

## Installation:

Currently, you need to download the shell script, put it in your path and make it executable.
It's also available via [krew](https://github.com/kubernetes-sigs/krew).

Gopass and kubectl is required for all functionality, jq and yq are required for fetching secrets from kubernetes to gopass. 

## Usage:

    # kubectl gopass apply [optional kubectl apply params] my-secret
applies secret "my-secret" via kubectl. Namespace and other params can be
specified and are passed through to kubectl.

    # kubectl gopass apply-recursive [optional kubectl apply params] my-secret-path

like apply but takes a path and applies all secrets below that path

    # kubectl gopass diff [optional kubectl apply params] my-secret
shows the secret diff of "my-secret" via kubectl. Namespace and other 
params can be specified and are passed through to kubectl.

    # kubectl gopass diff-recursive [optional kubectl apply params] my-secret-path

like diff but takes a path and applies all secrets below that path
    
    # kubectl gopass create my-new-secret
create a new secret prefilled with a kubernetes secret template and starts
an editor to edit the newly created secret

    # kubectl gopass fetch [optional kubectl get secret params] secret-name dir/to/gopass-secret
fetches a secret with name from the kubernetes cluster and stores in in gopass as dir/to/gopass-secret

    # kubectl gopass fetchrecursive [optional kubectl get secret params] dir/to/gopass-secret-path
fetches all secrets from the kubernetes cluster (namespace) and stores them in gopass dir/to/gopass-secret-path

    # kubectl gopass version
prints out the kubectl-gopass version ($VERSION)

    # kubectl gopass help
prints these usage instructions


## Contributions

are welcome :-)
