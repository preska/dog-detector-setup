#!/usr/bin/env bash
printf "\n\n######## deploy app ########\n"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


oc project ${OC_PROJECT} 2> /dev/null || oc new-project ${OC_PROJECT}
oc project
oc apply -f "${DIR}/app.yaml"

#oc new-app --docker-image=quay.io/cfchase/object-detection-app:latest \
#-l 'app.kubernetes.io/component=object-detection-app' \
#-l 'app.kubernetes.io/instance=object-detection-app' \
#-l 'app.kubernetes.io/part-of=object-detection-app' \
#-o  yaml > "${DIR}/sample-app.yaml"
#
#
#oc expose svc/object-detection-app \
#-l 'app.kubernetes.io/component=object-detection-app' \
#-l 'app.kubernetes.io/instance=object-detection-app' \
#-l 'app.kubernetes.io/part-of=object-detection-app' \
#-o  yaml > "${DIR}/sample-route.yaml"

