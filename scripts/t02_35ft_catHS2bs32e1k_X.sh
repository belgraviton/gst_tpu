FT_PARS='pretrained.dir results/t02_33e_cat_bs16e1k_X pretrained.reset_prediction_head False gnn.concat True optim.hingeshift 0.01'
# python main_tpugraphs.py --cfg configs/tpugraphs3wb.yaml dataset.name TPUGraphsXD name t02_35_lr5_bs32e1k_XD optim.max_epoch 1000 train.batch_size 32 gnn.dropout 0.0 optim.base_lr 0.00001 $FT_PARS
# python main_tpugraphs.py --cfg configs/tpugraphs3wb.yaml dataset.name TPUGraphsXR name t02_35_lr5clip_bs32e1k_XR optim.max_epoch 1000 train.batch_size 32 gnn.dropout 0.0 optim.base_lr 0.00001 optim.clip_grad_norm True $FT_PARS
# python main_tpugraphs.py --cfg configs/tpugraphs3wb.yaml dataset.name TPUGraphsXD name t02_35_lr4_bs32e1k_XD optim.max_epoch 1000 train.batch_size 32 gnn.dropout 0.0 optim.base_lr 0.0001 $FT_PARS
python main_tpugraphs.py --cfg configs/tpugraphs3wb.yaml dataset.name TPUGraphsXR name t02_35_lr4clip_bs32e1k_XR optim.max_epoch 1000 train.batch_size 32 gnn.dropout 0.0 optim.base_lr 0.0001 optim.clip_grad_norm True $FT_PARS
