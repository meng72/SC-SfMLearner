DATA_ROOT=/home/meng72/mr/data/kitti/depth/
TRAIN_SET=$DATA_ROOT/kitti_256/
python3 train-su.py $TRAIN_SET \
--resnet-layers 18 \
--num-scales 1 \
-b4 -s0.1 -c0.5 --epoch-size 1000 --sequence-length 3 \
--epochs 200 \
--with-ssim 1 \
--with-mask 1 \
--with-auto-mask 1 \
--with-pretrain 1 \
--log-output --with-gt \
--pretrained-pose /home/meng72/mr/SC-SfMLearner-Release/checkpoints/resnet18_depth_256/exp_pose_model_best.pth.tar \
--name resnet18_depth_256-train-su
#--pretrained-disp /home/meng72/mr/SC-SfMLearner-Release/checkpoints/resnet18_depth_256-train-su/11-03-11\:31-add0-epoch20-p1/dispnet_model_best.pth.tar \