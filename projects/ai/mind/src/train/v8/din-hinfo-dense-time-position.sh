folder=$(dirname "$0")
v=${folder##*/}
x=$(basename "$0")
echo $x
x=${x%.*}

sh ./train/${v}/common.sh \
  --model=Model \
  --feat_pooling=concat,dot \
  --use_history \
  --use_uid=1 \
  --use_news_info \
  --use_history_info \
  --his_pooling=din \
  --his_simple_pooling=mean \
  --use_entity_pretrain \
  --train_entity_emb \
  --emb_size=100 \
  --use_dense \
  --use_fresh=0 \
  --use_time_emb \
  --use_position_emb=0 \
  --use_position \
  --batch_size=1024 \
  --mname=$x \
  $*
