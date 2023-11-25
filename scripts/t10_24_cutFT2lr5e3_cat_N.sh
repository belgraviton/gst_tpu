ARCH="gnn.linmapin 176 gnn.configsize 8"
FT_PARS='pretrained.dir results/t10_21_cutFT_catbs32e1k_ND pretrained.reset_prediction_head False'
python main_tpugraphs.py --cfg configs/tpugraphs3wb.yaml dataset.name TPUGraphsND name t10_24_cutFT2lr5e3_catbs32e1k_ND optim.max_epoch 1000 train.batch_size 32 train.num_sample_config 32 optim.base_lr 0.00003 gnn.dropout 0.0 gnn.concat True dataset.cut True $ARCH $FT_PARS

# FT_PARS='pretrained.dir results/t10_21_cutFT_catbs32e1k_NR pretrained.reset_prediction_head False'
# python main_tpugraphs.py --cfg configs/tpugraphs3wb.yaml dataset.name TPUGraphsNR name t10_24_cutFT2lr5e3_catbs32e1k_NR optim.max_epoch 1000 train.batch_size 32 train.num_sample_config 32 optim.base_lr 0.00003 gnn.dropout 0.0 gnn.concat True dataset.cut True $ARCH $FT_PARS
