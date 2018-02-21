function make_BoozerSpectrum_Mirror_plots


BoozerSpectrum_file_list{1} = 'Mirror FL14 1p/boozmn_MirFL14_1p_1_507_32polmodes_18x24_v0.nc';
BoozerSpectrum_file_list{2} = 'Mirror FL14 1p/boozmn_MirFL14_1p_1_513_32polmodes_18x24_v0.nc';
current{1} = 10000; taper{1} = 0.01 * [-1 1 1 1 -1 -1];
current{2} = 10000; taper{2} = 0.01 * [-1 1 1 1 -1 -1];

BoozerSpectrum_file_list{3} = 'Mirror FL14 2p/boozmn_MirFL14_2p_1_507_32polmodes_18x24_v0.nc';
BoozerSpectrum_file_list{4} = 'Mirror FL14 2p/boozmn_MirFL14_2p_1_512_32polmodes_18x24_v0.nc';
current{3} = 10000; taper{3} = 0.02 * [-1 1 1 1 -1 -1];
current{4} = 10000; taper{4} = 0.02 * [-1 1 1 1 -1 -1];

BoozerSpectrum_file_list{5} = 'Mirror FL14 3p/boozmn_MirFL14_3p_1_506_32polmodes_18x24_v0.nc';
BoozerSpectrum_file_list{6} = 'Mirror FL14 3p/boozmn_MirFL14_3p_1_512_32polmodes_18x24_v0.nc';
current{5} = 10000; taper{5} = 0.03 * [-1 1 1 1 -1 -1];
current{6} = 10000; taper{6} = 0.03 * [-1 1 1 1 -1 -1];

BoozerSpectrum_file_list{7} = 'Mirror FL14 4p/boozmn_MirFL14_4p_1_505_32polmodes_18x24_v0.nc';
BoozerSpectrum_file_list{8} = 'Mirror FL14 4p/boozmn_MirFL14_4p_1_512_32polmodes_18x24_v0.nc';
current{7} = 10000; taper{7} = 0.04 * [-1 1 1 1 -1 -1];
current{8} = 10000; taper{8} = 0.04 * [-1 1 1 1 -1 -1];

BoozerSpectrum_file_list{9} = 'Mirror FL14 5p/boozmn_MirFL14_5p_1_505_32polmodes_18x24_v0.nc';
BoozerSpectrum_file_list{10} = 'Mirror FL14 5p/boozmn_MirFL14_5p_1_511_32polmodes_18x24_v0.nc';
current{9} = 10000; taper{9} = 0.05 * [-1 1 1 1 -1 -1];
current{10} = 10000; taper{10} = 0.05 * [-1 1 1 1 -1 -1];

BoozerSpectrum_file_list{11} = 'Mirror FL14 6p/boozmn_MirFL14_6p_1_504_32polmodes_18x24_v0.nc';
BoozerSpectrum_file_list{12} = 'Mirror FL14 6p/boozmn_MirFL14_6p_1_510_32polmodes_18x24_v0.nc';
current{11} = 10000; taper{11} = 0.06 * [-1 1 1 1 -1 -1];
current{12} = 10000; taper{12} = 0.06 * [-1 1 1 1 -1 -1];

BoozerSpectrum_file_list{13} = 'Mirror FL14 7p/boozmn_MirFL14_7p_1_504_32polmodes_18x24_v0.nc';
BoozerSpectrum_file_list{14} = 'Mirror FL14 7p/boozmn_MirFL14_7p_1_510_32polmodes_18x24_v0.nc';
current{13} = 10000; taper{13} = 0.07 * [-1 1 1 1 -1 -1];
current{14} = 10000; taper{14} = 0.07 * [-1 1 1 1 -1 -1];

BoozerSpectrum_file_list{15} = 'Mirror FL14 8p/boozmn_MirFL14_8p_1_503_32polmodes_18x24_v0.nc';
BoozerSpectrum_file_list{16} = 'Mirror FL14 8p/boozmn_MirFL14_8p_1_509_32polmodes_18x24_v0.nc';
current{15} = 10000; taper{15} = 0.08 * [-1 1 1 1 -1 -1];
current{16} = 10000; taper{16} = 0.08 * [-1 1 1 1 -1 -1];

BoozerSpectrum_file_list{17} = 'Mirror FL14 9p/boozmn_MirFL14_9p_1_508_32polmodes_18x24_v0.nc';
current{17} = 10000; taper{17} = 0.09 * [-1 1 1 1 -1 -1];
%
BoozerSpectrum_file_list{18} = 'Mirror FL14 10p Revisited/boozmn_MirFL14_10p_rev1_1_507_32polmodes_18x24_v0.nc';
BoozerSpectrum_file_list{19} = 'Mirror FL14 10p Revisited/boozmn_MirFL14_10p_rev1_1_508_32polmodes_18x24_v0.nc';
current{18} = 10000; taper{18} = 0.1 * [-1 1 1 1 -1 -1];
current{19} = 10000; taper{19} = 0.1 * [-1 1 1 1 -1 -1];

legend_strings = {'1% 1.507', '1% 1.513', '2% 1.507', '2% 1.512', ...
    '3% 1.506', '3% 1.512', '4% 1.505', '4% 1.1512', ...
    '5% 1.505', '5% 1.511', '6% 1.504', '6% 1.510', ...
    '7% 1.504', '7% 1.510', '8% 1.503', '8% 1.509', ...
    '9% 1.508', '10% 1.507', '10% 1.508'};

%================
% Make some plots
%================
plot_some_figures(BoozerSpectrum_file_list, current, taper, legend_strings, ...
    [2 25 51 81 99 100]);

% plot_some_figures({BoozerSpectrum_data_1p_a, BoozerSpectrum_data_1p_b, BoozerSpectrum_data_2p_a, ...
%     BoozerSpectrum_data_2p_b, BoozerSpectrum_data_3p_a, BoozerSpectrum_data_3p_b, ...
%     BoozerSpectrum_data_4p_a, BoozerSpectrum_data_4p_b, BoozerSpectrum_data_5p_a, ...
%     BoozerSpectrum_data_5p_b, BoozerSpectrum_data_6p_a, BoozerSpectrum_data_6p_b, ...
%     BoozerSpectrum_data_7p_a, BoozerSpectrum_data_7p_b, BoozerSpectrum_data_8p_a, ...
%     BoozerSpectrum_data_8p_b, BoozerSpectrum_data_9p_a, BoozerSpectrum_data_10p_a, ...
%     BoozerSpectrum_data_10p_b}, current, taper, legend_strings, ...
%     [1 25 51 81 99 101]);





%-----------------------------------------------------------------

function [] = plot_some_figures(BoozerSpectrum_filename_cells, ...
    current_cells, taper_cells, legend_strings, surface_list)
%9. Make & Inspect Boozer spectrum and line-following of |B|(r) at rho_eff^2 = s = (0.01, 0.25, 0.5, 0.81 .99);
%  Make figures of spectrum at each surface
%  Make figures of |B| following for each surface
symbol_cells = {'none', 'none', 'none', 'none', 'none', 'none', ...
    'none', 'none', 'none', 'none', 'none', 'none', ...
    'none', 'none', 'none', 'none', 'none', 'none', ...
    'none', 'none', 'none', 'none', 'none', 'none'};
line_cells ={'-', '-', '-', '-', '-', '-', ...
    '--', '--', '--', '--', '--', '--', ...
    ':', ':', ':', ':', ':', ':', ...
    '-', '-', '-', '-', '-', '-'};

% Loop over each Boozer spectrum file
for ii = 1:length(BoozerSpectrum_filename_cells)
    % Loop over each surface
    for surf_loop = surface_list
        [fh1, fh2] = plot_Boozer_spectrum(BoozerSpectrum_filename_cells{ii}, surf_loop, ...
            [1:24], 1, 1, 'bgrmckbgrmckbgrmckbgrmck', symbol_cells, ...
            line_cells, 'jet');
        % Need to make the first Boozer spectrum figure look better.
        figure(fh1);
        ylim([-.2 .05]); grid on;
        fh3 = compare_Boozer_and_Biot_Savart_HSX(BoozerSpectrum_filename_cells{ii}, ...
            surf_loop, 'all', current_cells{ii}, taper_cells{ii});
        fname1 = ['Figures/Boozer_spectrum_' legend_strings{ii} ...
            '.fig'];
        fname2 = ['Figures/Boozer_2d_' legend_strings{ii} ...
            '_surf_' num2str(surf_loop) '.fig'];
        fname3 = ['Figures/Boozer_Biot_Savart_Comparison_' ...
            legend_strings{ii} '_surf_' ...
            num2str(surf_loop) '.fig'];
        % Swap the '%'-signs with 'p' 
        fname1 = strrep(fname1, '%', 'p');
        fname2 = strrep(fname2, '%', 'p');
        fname3 = strrep(fname3, '%', 'p');
        savefig(fh1, fname1);
        savefig(fh2, fname2);
        savefig(fh3, fname3);
        close(fh1);
        close(fh2);
        close(fh3);
    end
end

