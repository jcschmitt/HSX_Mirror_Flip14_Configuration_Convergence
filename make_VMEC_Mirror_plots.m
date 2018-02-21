function make_VMEC_Mirror_plots


VMEC_data_1p_a = read_vmec('Mirror FL14 1p/wout_MirFL14_1p_1_507_32polmodes_18x24_v0.nc');
VMEC_data_1p_b = read_vmec('Mirror FL14 1p/wout_MirFL14_1p_1_513_32polmodes_18x24_v0.nc');

VMEC_data_2p_a = read_vmec('Mirror FL14 2p/wout_MirFL14_2p_1_507_32polmodes_18x24_v0.nc');
VMEC_data_2p_b = read_vmec('Mirror FL14 2p/wout_MirFL14_2p_1_512_32polmodes_18x24_v0.nc');

VMEC_data_3p_a = read_vmec('Mirror FL14 3p/wout_MirFL14_3p_1_506_32polmodes_18x24_v0.nc');
VMEC_data_3p_b = read_vmec('Mirror FL14 3p/wout_MirFL14_3p_1_512_32polmodes_18x24_v0.nc');

VMEC_data_4p_a = read_vmec('Mirror FL14 4p/wout_MirFL14_4p_1_505_32polmodes_18x24_v0.nc');
VMEC_data_4p_b = read_vmec('Mirror FL14 4p/wout_MirFL14_4p_1_512_32polmodes_18x24_v0.nc');

VMEC_data_5p_a = read_vmec('Mirror FL14 5p/wout_MirFL14_5p_1_505_32polmodes_18x24_v0.nc');
VMEC_data_5p_b = read_vmec('Mirror FL14 5p/wout_MirFL14_5p_1_511_32polmodes_18x24_v0.nc');

VMEC_data_6p_a = read_vmec('Mirror FL14 6p/wout_MirFL14_6p_1_504_32polmodes_18x24_v0.nc');
VMEC_data_6p_b = read_vmec('Mirror FL14 6p/wout_MirFL14_6p_1_510_32polmodes_18x24_v0.nc');

VMEC_data_7p_a = read_vmec('Mirror FL14 7p/wout_MirFL14_7p_1_504_32polmodes_18x24_v0.nc');
VMEC_data_7p_b = read_vmec('Mirror FL14 7p/wout_MirFL14_7p_1_510_32polmodes_18x24_v0.nc');

VMEC_data_8p_a = read_vmec('Mirror FL14 8p/wout_MirFL14_8p_1_503_32polmodes_18x24_v0.nc');
VMEC_data_8p_b = read_vmec('Mirror FL14 8p/wout_MirFL14_8p_1_509_32polmodes_18x24_v0.nc');

VMEC_data_9p_a = read_vmec('Mirror FL14 9p/wout_MirFL14_9p_1_508_32polmodes_18x24_v0.nc');

VMEC_data_10p_a = read_vmec('Mirror FL14 10p Revisited/wout_MirFL14_10p_rev1_1_507_32polmodes_18x24_v0.nc');
VMEC_data_10p_b = read_vmec('Mirror FL14 10p Revisited/wout_MirFL14_10p_rev1_1_508_32polmodes_18x24_v0.nc');

legend_strs = {'1% 1.507', '1% 1.513', '2% 1.507', '2% 1.512', ...
    '3% 1.506', '3% 1.512', '4% 1.505', '4% 1.1512', ...
    '5% 1.505', '5% 1.511', '6% 1.504', '6% 1.510', ...
    '7% 1.504', '7% 1.510', '8% 1.503', '8% 1.509', ...
    '9% 1.508', '10% 1.507', '10% 1.508'};

%================
% Make some plots
%================

% plots use r_eff = vmec_data.Aminor * [1:vmec_data.ns] / vmec_data.ns;

%================
% iota
%================

fh = figure;
plot_iota(fh, {VMEC_data_1p_a, VMEC_data_1p_b, VMEC_data_2p_a, ...
    VMEC_data_2p_b, VMEC_data_3p_a, VMEC_data_3p_b, ...
    VMEC_data_4p_a, VMEC_data_4p_b, VMEC_data_5p_a, ...
    VMEC_data_5p_b, VMEC_data_6p_a, VMEC_data_6p_b, ...
    VMEC_data_7p_a, VMEC_data_7p_b, VMEC_data_8p_a, ...
    VMEC_data_8p_b, VMEC_data_9p_a, VMEC_data_10p_a, ...
    VMEC_data_10p_b});
legend(legend_strs)
title('Mirror Flip14 Scan');
axis([0 13, 1.04, 1.11]);
make_my_plot_pretty3;
set(fh, 'Position', [200 200 750 550]);
set(legend, 'Location', 'NorthWest')

%==========================================================


function [] = plot_iota(figure_handle, VMEC_data_cells)

% Switch focus to figure_handle
figure(figure_handle);
hold on; box on;
for ii = 1:length(VMEC_data_cells)
    VMEC_data_loop = VMEC_data_cells{ii};
    % Plotting vs. cm.
    plot(100 * VMEC_data_loop.Aminor * sqrt([1:VMEC_data_loop.ns] / ...
        VMEC_data_loop.ns), VMEC_data_loop.iotaf, '.-')
end
xlabel('Minor Radius  [cm]');
ylabel('\iota / 2\pi')
grid on;

