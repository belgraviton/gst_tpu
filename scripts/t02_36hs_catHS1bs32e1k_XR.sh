FT_PARS='pretrained.dir results/t02_35e_lr4clip_bs32e1k_XR pretrained.reset_prediction_head False gnn.concat True optim.hingeshift 0.1'
# python main_tpugraphs.py --cfg configs/tpugraphs3wb.yaml dataset.name TPUGraphsXR name t02_36hs_lr4clip_bs32e1h_XR optim.max_epoch 100 train.batch_size 32 gnn.dropout 0.0 optim.base_lr 0.0001 optim.clip_grad_norm True $FT_PARS
python main_tpugraphs.py --cfg configs/tpugraphs3wb.yaml dataset.name TPUGraphsXR name t02_36hs_lr5clip_bs32e1h_XR optim.max_epoch 100 train.batch_size 32 gnn.dropout 0.0 optim.base_lr 0.00001 optim.clip_grad_norm True $FT_PARS
