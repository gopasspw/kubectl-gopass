# kubectl-gopass

A [plugin for kubectl](https://kubernetes.io/docs/tasks/extend-kubectl/kubectl-plugins/) to support reading and writing secrets directly from/to [gopass](https://github.com/gopasspw/gopass).

## Installation:

Currently, you need to download the shell script, put it in your path and make it executable.
Packaging it for [krew](https://github.com/kubernetes-sigs/krew) is planned.

## Usage:

    # kubectl gopass apply [optional kubectl apply params] my-secret
applies secret "my-secret" via kubectl. Namespace and other params can be
specified and are passed through to kubectl.


    # kubectl gopass apply-recursive [optional kubectl apply params] my-secret-path
like apply but takes a path and applies all secrets below that path


    # kubectl gopass diff [optional kubectl apply params] my-secret
shows the secret diff of "my-secret" via kubectl. Namespace and other 
params can be specified and are passed through to kubectl.

    # kubectl gopass apply-recursive [optional kubectl apply params] my-secret-path
like diff but takes a path and applies all secrets below that path
    
    # kubectl gopass create my-new-secret
create a new secret prefilled with a kubernetes secret template and starts
an editor to edit the newly created secret

    # kubectl gopass version
prints out the kubectl-gopass version

## Contributions

are welcome :-)
