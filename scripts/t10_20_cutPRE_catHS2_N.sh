ARCH="gnn.linmapin 176 gnn.configsize 8"
python main_tpugraphs.py --cfg configs/tpugraphs3wb.yaml dataset.name TPUGraphsNA name t10_20_cutPRE_catHS2bs32e1k_N optim.max_epoch 1000 train.batch_size 32 gnn.dropout 0.0 gnn.concat True optim.hingeshift 0.01 dataset.cut True $ARCH
