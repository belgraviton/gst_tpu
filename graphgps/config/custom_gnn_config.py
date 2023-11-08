from torch_geometric.graphgym.register import register_config


@register_config('custom_gnn')
def custom_gnn_cfg(cfg):
    """Extending config group of GraphGym's built-in GNN for purposes of our
    CustomGNN network model.
    """

    # Use residual connections between the GNN layers.
    cfg.gnn.residual = False

    # Use concatenation as output of base layers.
    cfg.gnn.concat = False

    # In and out size of op embeddings
    cfg.gnn.embin = 128
    cfg.gnn.embout = 128

    # Lin-map layer input and output
    cfg.gnn.linmapin = 286
    cfg.gnn.linmapout = 128

    # Op and configs weights
    cfg.gnn.opweight = 100
    cfg.gnn.configweight = 100

    # Config size
    cfg.gnn.configsize = 18