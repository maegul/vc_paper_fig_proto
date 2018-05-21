% wts = wts_collect(outstruct);
% 
lay_c_size = size(wts);
lay_c_size = lay_c_size(1);
% 
% pct_wts = perc_pos_wts_end(wts, outstruct);
% pw = pct_wts;
% ori_calc_lay_a_wts;
% 
% 
% savejson('perc_wt', pw, 'percentage_weights.json')
% savejson('retina_pref_ori', lay_a_pref_oris, 'pretinal_pref_orientations.json')
% savejson('retina_pref_ori', outstruct.layerconfig.RF.theta, 'pretinal_pref_orientations_UNINVERTED.json')
% 
% % load tuning
% [pref_oris, circ_vars, max_resp, pref_idx, ori_tun_psf, ori_tun, sf_tun] = ori_calc_nov_2017(tuning);
% 
% savejson('ori_tun', ori_tun, 'ori_tun_resp.json')
% 
% savejson('sf_tun', sf_tun, 'sf_tun_resp.json')
% savejson('ori_sf_resp', max_resp, 'ori_sf_resp.json')
% savejson('ori_tun_psf', ori_tun_psf, 'ori_tun_pref_sf.json')
% 
savejson('pref_idx', pref_idx, 'preferred_idx.json')


iterations = {'start' 'end'};

new_max_resp = {};

for i=1:length(iterations)
    
    it = iterations{i};
    
    new_max_resp.(it) = num2cell(max_resp.(it), [2 3]); % put second and third dims into each cell array
    
    % Need to squeeze for some reason
    for cn=1:lay_c_size
        new_max_resp.(it){cn} = squeeze(new_max_resp.(it){cn});
    end
    
end

savejson('ori_sf_resp', new_max_resp, 'ori_sf_resp.json');

