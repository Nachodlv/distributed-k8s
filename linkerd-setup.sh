linkerd install | kubectl apply -f -;

kubectl get -n user-deployment deploy -o yaml \
  | linkerd inject - \
  | kubectl apply -f -;

kubectl get -n user-service deploy -o yaml \
  | linkerd inject - \
  | kubectl apply -f -;

kubectl get -n wishlist deploy -o yaml \
  | linkerd inject - \
  | kubectl apply -f -;

kubectl get -n recommendation deploy -o yaml \
  | linkerd inject - \
  | kubectl apply -f -;

kubectl get -n product deploy -o yaml \
  | linkerd inject - \
  | kubectl apply -f -;

kubectl get -n email deploy -o yaml \
  | linkerd inject - \
  | kubectl apply -f -;

linkerd dashboard &;
