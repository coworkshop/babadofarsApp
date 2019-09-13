#!/bin/bash

set -euo pipefail

###################################################################################################
#
#  WARNING: this command is experimental and the generated script should be executed at the users own risk.  We use this
#  generated command on the Jenkins X project itself but it has not been tested on other clusters.
#
###################################################################################################

# Project concise-wharf-252719

# No firewalls found for deletion

gcloud compute disks delete --zone=europe-north1-a --quiet gke-hornetleaf-10241ad-pvc-42bc45c8-d61b-11e9-864e-42010aa601cc --project concise-wharf-252719 || true
gcloud compute disks delete --zone=europe-north1-a --quiet gke-hornetleaf-10241ad-pvc-44dfa521-d61b-11e9-864e-42010aa601cc --project concise-wharf-252719 || true

# No addresses found for deletion


gcloud iam service-accounts delete hornetleaf-ko@concise-wharf-252719.iam.gserviceaccount.com --quiet --project concise-wharf-252719 || true
gcloud projects remove-iam-policy-binding concise-wharf-252719 --member=serviceAccount:hornetleaf-ko@concise-wharf-252719.iam.gserviceaccount.com --role=roles/storage.admin --quiet
gcloud projects remove-iam-policy-binding concise-wharf-252719 --member=serviceAccount:hornetleaf-ko@concise-wharf-252719.iam.gserviceaccount.com --role=roles/storage.objectAdmin --quiet
gcloud projects remove-iam-policy-binding concise-wharf-252719 --member=serviceAccount:hornetleaf-ko@concise-wharf-252719.iam.gserviceaccount.com --role=roles/storage.objectCreator --quiet

