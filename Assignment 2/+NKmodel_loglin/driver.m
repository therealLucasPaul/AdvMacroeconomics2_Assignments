%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'NKmodel_loglin';
M_.dynare_version = '5.4';
oo_.dynare_version = '5.4';
options_.dynare_version = '5.4';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(2,1);
M_.exo_names_tex = cell(2,1);
M_.exo_names_long = cell(2,1);
M_.exo_names(1) = {'ev'};
M_.exo_names_tex(1) = {'ev'};
M_.exo_names_long(1) = {'ev'};
M_.exo_names(2) = {'ea'};
M_.exo_names_tex(2) = {'ea'};
M_.exo_names_long(2) = {'ea'};
M_.endo_names = cell(16,1);
M_.endo_names_tex = cell(16,1);
M_.endo_names_long = cell(16,1);
M_.endo_names(1) = {'gap'};
M_.endo_names_tex(1) = {'gap'};
M_.endo_names_long(1) = {'gap'};
M_.endo_names(2) = {'pi'};
M_.endo_names_tex(2) = {'pi'};
M_.endo_names_long(2) = {'pi'};
M_.endo_names(3) = {'i'};
M_.endo_names_tex(3) = {'i'};
M_.endo_names_long(3) = {'i'};
M_.endo_names(4) = {'v'};
M_.endo_names_tex(4) = {'v'};
M_.endo_names_long(4) = {'v'};
M_.endo_names(5) = {'a'};
M_.endo_names_tex(5) = {'a'};
M_.endo_names_long(5) = {'a'};
M_.endo_names(6) = {'y'};
M_.endo_names_tex(6) = {'y'};
M_.endo_names_long(6) = {'y'};
M_.endo_names(7) = {'n'};
M_.endo_names_tex(7) = {'n'};
M_.endo_names_long(7) = {'n'};
M_.endo_names(8) = {'m'};
M_.endo_names_tex(8) = {'m'};
M_.endo_names_long(8) = {'m'};
M_.endo_names(9) = {'w'};
M_.endo_names_tex(9) = {'w'};
M_.endo_names_long(9) = {'w'};
M_.endo_names(10) = {'y_bar'};
M_.endo_names_tex(10) = {'y\_bar'};
M_.endo_names_long(10) = {'y_bar'};
M_.endo_names(11) = {'r'};
M_.endo_names_tex(11) = {'r'};
M_.endo_names_long(11) = {'r'};
M_.endo_names(12) = {'deltam'};
M_.endo_names_tex(12) = {'deltam'};
M_.endo_names_long(12) = {'deltam'};
M_.endo_names(13) = {'y_over_n'};
M_.endo_names_tex(13) = {'y\_over\_n'};
M_.endo_names_long(13) = {'y_over_n'};
M_.endo_names(14) = {'i_ann'};
M_.endo_names_tex(14) = {'i\_ann'};
M_.endo_names_long(14) = {'i_ann'};
M_.endo_names(15) = {'r_ann'};
M_.endo_names_tex(15) = {'r\_ann'};
M_.endo_names_long(15) = {'r_ann'};
M_.endo_names(16) = {'pi_ann'};
M_.endo_names_tex(16) = {'pi\_ann'};
M_.endo_names_long(16) = {'pi_ann'};
M_.endo_partitions = struct();
M_.param_names = cell(27,1);
M_.param_names_tex = cell(27,1);
M_.param_names_long = cell(27,1);
M_.param_names(1) = {'betta'};
M_.param_names_tex(1) = {'betta'};
M_.param_names_long(1) = {'betta'};
M_.param_names(2) = {'sigma'};
M_.param_names_tex(2) = {'sigma'};
M_.param_names_long(2) = {'sigma'};
M_.param_names(3) = {'varphi'};
M_.param_names_tex(3) = {'varphi'};
M_.param_names_long(3) = {'varphi'};
M_.param_names(4) = {'mu'};
M_.param_names_tex(4) = {'mu'};
M_.param_names_long(4) = {'mu'};
M_.param_names(5) = {'xsi'};
M_.param_names_tex(5) = {'xsi'};
M_.param_names_long(5) = {'xsi'};
M_.param_names(6) = {'theta'};
M_.param_names_tex(6) = {'theta'};
M_.param_names_long(6) = {'theta'};
M_.param_names(7) = {'alpha'};
M_.param_names_tex(7) = {'alpha'};
M_.param_names_long(7) = {'alpha'};
M_.param_names(8) = {'lambda'};
M_.param_names_tex(8) = {'lambda'};
M_.param_names_long(8) = {'lambda'};
M_.param_names(9) = {'kappa'};
M_.param_names_tex(9) = {'kappa'};
M_.param_names_long(9) = {'kappa'};
M_.param_names(10) = {'phi_p'};
M_.param_names_tex(10) = {'phi\_p'};
M_.param_names_long(10) = {'phi_p'};
M_.param_names(11) = {'phi_x'};
M_.param_names_tex(11) = {'phi\_x'};
M_.param_names_long(11) = {'phi_x'};
M_.param_names(12) = {'rho_a'};
M_.param_names_tex(12) = {'rho\_a'};
M_.param_names_long(12) = {'rho_a'};
M_.param_names(13) = {'rho_v'};
M_.param_names_tex(13) = {'rho\_v'};
M_.param_names_long(13) = {'rho_v'};
M_.param_names(14) = {'sigma_a'};
M_.param_names_tex(14) = {'sigma\_a'};
M_.param_names_long(14) = {'sigma_a'};
M_.param_names(15) = {'sigma_v'};
M_.param_names_tex(15) = {'sigma\_v'};
M_.param_names_long(15) = {'sigma_v'};
M_.param_names(16) = {'y_st'};
M_.param_names_tex(16) = {'y\_st'};
M_.param_names_long(16) = {'y_st'};
M_.param_names(17) = {'ybar_st'};
M_.param_names_tex(17) = {'ybar\_st'};
M_.param_names_long(17) = {'ybar_st'};
M_.param_names(18) = {'n_st'};
M_.param_names_tex(18) = {'n\_st'};
M_.param_names_long(18) = {'n_st'};
M_.param_names(19) = {'w_st'};
M_.param_names_tex(19) = {'w\_st'};
M_.param_names_long(19) = {'w_st'};
M_.param_names(20) = {'pi_st'};
M_.param_names_tex(20) = {'pi\_st'};
M_.param_names_long(20) = {'pi_st'};
M_.param_names(21) = {'gap_st'};
M_.param_names_tex(21) = {'gap\_st'};
M_.param_names_long(21) = {'gap_st'};
M_.param_names(22) = {'i_st'};
M_.param_names_tex(22) = {'i\_st'};
M_.param_names_long(22) = {'i_st'};
M_.param_names(23) = {'r_st'};
M_.param_names_tex(23) = {'r\_st'};
M_.param_names_long(23) = {'r_st'};
M_.param_names(24) = {'m_st'};
M_.param_names_tex(24) = {'m\_st'};
M_.param_names_long(24) = {'m_st'};
M_.param_names(25) = {'deltam_st'};
M_.param_names_tex(25) = {'deltam\_st'};
M_.param_names_long(25) = {'deltam_st'};
M_.param_names(26) = {'v_st'};
M_.param_names_tex(26) = {'v\_st'};
M_.param_names_long(26) = {'v_st'};
M_.param_names(27) = {'a_st'};
M_.param_names_tex(27) = {'a\_st'};
M_.param_names_long(27) = {'a_st'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 16;
M_.param_nbr = 27;
M_.orig_endo_nbr = 16;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = true;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 16;
M_.eq_nbr = 16;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 4 20;
 0 5 21;
 0 6 0;
 1 7 0;
 2 8 22;
 0 9 0;
 0 10 0;
 3 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 0 17 0;
 0 18 0;
 0 19 0;]';
M_.nstatic = 11;
M_.nfwrd   = 2;
M_.npred   = 2;
M_.nboth   = 1;
M_.nsfwrd   = 3;
M_.nspred   = 3;
M_.ndynamic   = 5;
M_.dynamic_tmp_nbr = [2; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'gap' ;
  2 , 'name' , 'pi' ;
  3 , 'name' , 'i' ;
  4 , 'name' , 'v' ;
  5 , 'name' , 'a' ;
  6 , 'name' , 'w' ;
  7 , 'name' , 'm' ;
  8 , 'name' , 'y' ;
  9 , 'name' , 'y_bar' ;
  10 , 'name' , '10' ;
  11 , 'name' , 'deltam' ;
  12 , 'name' , 'r' ;
  13 , 'name' , 'y_over_n' ;
  14 , 'name' , 'i_ann' ;
  15 , 'name' , 'r_ann' ;
  16 , 'name' , 'pi_ann' ;
};
M_.mapping.gap.eqidx = [1 2 3 10 ];
M_.mapping.pi.eqidx = [1 2 3 11 12 16 ];
M_.mapping.i.eqidx = [1 3 7 12 14 ];
M_.mapping.v.eqidx = [3 4 ];
M_.mapping.a.eqidx = [1 5 8 9 ];
M_.mapping.y.eqidx = [6 7 8 10 13 ];
M_.mapping.n.eqidx = [6 8 13 ];
M_.mapping.m.eqidx = [7 11 ];
M_.mapping.w.eqidx = [6 ];
M_.mapping.y_bar.eqidx = [9 10 ];
M_.mapping.r.eqidx = [12 15 ];
M_.mapping.deltam.eqidx = [11 ];
M_.mapping.y_over_n.eqidx = [13 ];
M_.mapping.i_ann.eqidx = [14 ];
M_.mapping.r_ann.eqidx = [15 ];
M_.mapping.pi_ann.eqidx = [16 ];
M_.mapping.ev.eqidx = [4 ];
M_.mapping.ea.eqidx = [5 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [4 5 8 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(16, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(27, 1);
M_.endo_trends = struct('deflator', cell(16, 1), 'log_deflator', cell(16, 1), 'growth_factor', cell(16, 1), 'log_growth_factor', cell(16, 1));
M_.NNZDerivatives = [49; 0; -1; ];
M_.static_tmp_nbr = [0; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.99;
betta = M_.params(1);
M_.params(2) = 1;
sigma = M_.params(2);
M_.params(3) = 5;
varphi = M_.params(3);
M_.params(4) = 4;
mu = M_.params(4);
M_.params(5) = 0.75;
xsi = M_.params(5);
M_.params(6) = 9;
theta = M_.params(6);
M_.params(7) = 0.25;
alpha = M_.params(7);
M_.params(8) = (1-M_.params(1)*M_.params(5))*(1-M_.params(5))/M_.params(5);
lambda = M_.params(8);
M_.params(9) = M_.params(8)*(M_.params(7)+(1-M_.params(7))*M_.params(2)+M_.params(3))/(1-M_.params(7)+M_.params(7)*M_.params(6));
kappa = M_.params(9);
M_.params(10) = 1.5;
phi_p = M_.params(10);
M_.params(11) = 0.125;
phi_x = M_.params(11);
M_.params(12) = 0.9;
rho_a = M_.params(12);
M_.params(13) = 0.5;
rho_v = M_.params(13);
M_.params(14) = 0.007;
sigma_a = M_.params(14);
M_.params(15) = 0.0025;
sigma_v = M_.params(15);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(1) = 0;
oo_.steady_state(2) = 0;
oo_.steady_state(3) = 0;
oo_.steady_state(4) = 0;
oo_.steady_state(5) = 0;
oo_.steady_state(6) = 0;
oo_.steady_state(7) = 0;
oo_.steady_state(8) = 0;
oo_.steady_state(9) = 0;
oo_.steady_state(10) = 0;
oo_.steady_state(11) = 0;
oo_.steady_state(12) = 0;
oo_.steady_state(13) = 0;
oo_.steady_state(14) = 0;
oo_.steady_state(15) = 0;
oo_.steady_state(16) = 0;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0.0625;
M_.Sigma_e(2, 2) = 1;
options_.irf = 20;
options_.order = 1;
var_list_ = {'gap';'pi_ann';'i_ann';'r_ann';'y';'n';'w';'v';'a';'y_over_n'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'NKmodel_loglin_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKmodel_loglin_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKmodel_loglin_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKmodel_loglin_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKmodel_loglin_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKmodel_loglin_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKmodel_loglin_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
