# Check space left on PVCs

Checks remaining disk space in each PVC. This must be used in a job to check by X amount of time.


## Environment variables

* NAMESPACE: to check for pods with associated PVCs
* SPACE_USED_TRESHOLD: max used space in volume to send an alert
* PAGER_DUTY_SERVICE_KEY: service key of pager duty to use to send alerts


