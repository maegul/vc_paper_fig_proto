wts = wts_collect(outstruct);
pct_wts = perc_pos_wts_end(wts, outstruct);
pw = pct_wts;
ori_calc_lay_a_wts;
savejson('perc_wt', pw, 'percentage_weights.json')
savejson('retina_pref_ori', lay_a_pref_oris, 'pretinal_pref_orientations.json')
savejson('retina_pref_ori', outstruct.layerconfig.RF.theta, 'pretinal_pref_orientations_UNINVERTED.json')

% load tuning
[pref_oris, circ_vars, max_resp, pref_idx, ori_tun_psf, ori_tun, sf_tun] = ori_calc_nov_2017(tuning);

savejson('ori_tun', ori_tun, 'ori_tun_resp.json')

savejson('sf_tun', sf_tun, 'sf_tun_resp.json')
savejson('ori_sf_resp', max_resp, 'ori_sf_resp.json')
savejson('ori_tun_psf', ori_tun_psf, 'ori_tun_pref_sf.json')