ARCH="gnn.linmapin 176 gnn.configsize 8"
FT_PARS='pretrained.dir results/t10_20_cutPRE_catHS2bs32e1k_N pretrained.reset_prediction_head False'
python main_tpugraphs.py --cfg configs/tpugraphs3wb.yaml dataset.name TPUGraphsND name t10_21_cutFT_catbs32e1k_ND optim.max_epoch 1000 train.batch_size 32 gnn.dropout 0.0 gnn.concat True dataset.cut True $ARCH $FT_PARS
python main_tpugraphs.py --cfg configs/tpugraphs3wb.yaml dataset.name TPUGraphsNR name t10_21_cutFT_catbs32e1k_NR optim.max_epoch 1000 train.batch_size 32 gnn.dropout 0.0 gnn.concat True dataset.cut True $ARCH $FT_PARS
