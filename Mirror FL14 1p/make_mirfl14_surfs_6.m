path(path,'~/HSX/bs_mex');
[surf_x,surf_y,surf_z,phitemp] = make_lcfs_jcs(1.513, 200, 200, 10762, .01*[-1 1 1 1 -1 -1]);
save LCFS_MirFL14_1p_1_513

clear surf_x surf_y surf_z phitemp
[surf_x,surf_y,surf_z,phitemp] = make_lcfs_jcs(1.514, 200, 200, 10762, .01*[-1 1 1 1 -1 -1]);
save LCFS_MirFL14_1p_1_514


