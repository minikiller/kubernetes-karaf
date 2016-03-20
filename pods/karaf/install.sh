 kubectl create -f nfs-pv.yaml
 sleep 3
 kubectl create -f nfs-pvc.yaml
 sleep 3
 kubectl create -f app1-rc.yaml
  sleep 3 
 #kubectl create -f app2-rc.yaml

 kubectl create -f app1-svc.yaml
 #kubectl create -f app2-svc.yaml 
