path(path,'~/HSX/bs_mex');
[surf_x,surf_y,surf_z,phitemp] = make_lcfs_jcs(1.511, 200, 200, 10762, .1*[-1 1 1 1 -1 -1]);
save LCFS_MirFL14_10p_1_511

clear surf_x surf_y surf_z phitemp
[surf_x,surf_y,surf_z,phitemp] = make_lcfs_jcs(1.512, 200, 200, 10762, .1*[-1 1 1 1 -1 -1]);
save LCFS_MirFL14_10p_1_512


