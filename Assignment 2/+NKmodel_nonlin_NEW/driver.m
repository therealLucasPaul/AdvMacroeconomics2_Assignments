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
M_.fname = 'NKmodel_nonlin_NEW';
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
M_.endo_names = cell(10,1);
M_.endo_names_tex = cell(10,1);
M_.endo_names_long = cell(10,1);
M_.endo_names(1) = {'PI'};
M_.endo_names_tex(1) = {'PI'};
M_.endo_names_long(1) = {'PI'};
M_.endo_names(2) = {'R'};
M_.endo_names_tex(2) = {'R'};
M_.endo_names_long(2) = {'R'};
M_.endo_names(3) = {'V'};
M_.endo_names_tex(3) = {'V'};
M_.endo_names_long(3) = {'V'};
M_.endo_names(4) = {'A'};
M_.endo_names_tex(4) = {'A'};
M_.endo_names_long(4) = {'A'};
M_.endo_names(5) = {'Y'};
M_.endo_names_tex(5) = {'Y'};
M_.endo_names_long(5) = {'Y'};
M_.endo_names(6) = {'C'};
M_.endo_names_tex(6) = {'C'};
M_.endo_names_long(6) = {'C'};
M_.endo_names(7) = {'N'};
M_.endo_names_tex(7) = {'N'};
M_.endo_names_long(7) = {'N'};
M_.endo_names(8) = {'MC'};
M_.endo_names_tex(8) = {'MC'};
M_.endo_names_long(8) = {'MC'};
M_.endo_names(9) = {'W'};
M_.endo_names_tex(9) = {'W'};
M_.endo_names_long(9) = {'W'};
M_.endo_names(10) = {'Rreal'};
M_.endo_names_tex(10) = {'Rreal'};
M_.endo_names_long(10) = {'Rreal'};
M_.endo_partitions = struct();
M_.param_names = cell(27,1);
M_.param_names_tex = cell(27,1);
M_.param_names_long = cell(27,1);
M_.param_names(1) = {'phi'};
M_.param_names_tex(1) = {'phi'};
M_.param_names_long(1) = {'phi'};
M_.param_names(2) = {'betta'};
M_.param_names_tex(2) = {'betta'};
M_.param_names_long(2) = {'betta'};
M_.param_names(3) = {'sigma'};
M_.param_names_tex(3) = {'sigma'};
M_.param_names_long(3) = {'sigma'};
M_.param_names(4) = {'varphi'};
M_.param_names_tex(4) = {'varphi'};
M_.param_names_long(4) = {'varphi'};
M_.param_names(5) = {'mu'};
M_.param_names_tex(5) = {'mu'};
M_.param_names_long(5) = {'mu'};
M_.param_names(6) = {'xsi'};
M_.param_names_tex(6) = {'xsi'};
M_.param_names_long(6) = {'xsi'};
M_.param_names(7) = {'theta'};
M_.param_names_tex(7) = {'theta'};
M_.param_names_long(7) = {'theta'};
M_.param_names(8) = {'alpha'};
M_.param_names_tex(8) = {'alpha'};
M_.param_names_long(8) = {'alpha'};
M_.param_names(9) = {'lambda'};
M_.param_names_tex(9) = {'lambda'};
M_.param_names_long(9) = {'lambda'};
M_.param_names(10) = {'kappa'};
M_.param_names_tex(10) = {'kappa'};
M_.param_names_long(10) = {'kappa'};
M_.param_names(11) = {'phi_p'};
M_.param_names_tex(11) = {'phi\_p'};
M_.param_names_long(11) = {'phi_p'};
M_.param_names(12) = {'phi_x'};
M_.param_names_tex(12) = {'phi\_x'};
M_.param_names_long(12) = {'phi_x'};
M_.param_names(13) = {'rho_a'};
M_.param_names_tex(13) = {'rho\_a'};
M_.param_names_long(13) = {'rho_a'};
M_.param_names(14) = {'rho_v'};
M_.param_names_tex(14) = {'rho\_v'};
M_.param_names_long(14) = {'rho_v'};
M_.param_names(15) = {'sigma_a'};
M_.param_names_tex(15) = {'sigma\_a'};
M_.param_names_long(15) = {'sigma_a'};
M_.param_names(16) = {'sigma_v'};
M_.param_names_tex(16) = {'sigma\_v'};
M_.param_names_long(16) = {'sigma_v'};
M_.param_names(17) = {'Ass'};
M_.param_names_tex(17) = {'Ass'};
M_.param_names_long(17) = {'Ass'};
M_.param_names(18) = {'PIss'};
M_.param_names_tex(18) = {'PIss'};
M_.param_names_long(18) = {'PIss'};
M_.param_names(19) = {'Yss'};
M_.param_names_tex(19) = {'Yss'};
M_.param_names_long(19) = {'Yss'};
M_.param_names(20) = {'Css'};
M_.param_names_tex(20) = {'Css'};
M_.param_names_long(20) = {'Css'};
M_.param_names(21) = {'Nss'};
M_.param_names_tex(21) = {'Nss'};
M_.param_names_long(21) = {'Nss'};
M_.param_names(22) = {'Wss'};
M_.param_names_tex(22) = {'Wss'};
M_.param_names_long(22) = {'Wss'};
M_.param_names(23) = {'MCss'};
M_.param_names_tex(23) = {'MCss'};
M_.param_names_long(23) = {'MCss'};
M_.param_names(24) = {'Rss'};
M_.param_names_tex(24) = {'Rss'};
M_.param_names_long(24) = {'Rss'};
M_.param_names(25) = {'Yflexss'};
M_.param_names_tex(25) = {'Yflexss'};
M_.param_names_long(25) = {'Yflexss'};
M_.param_names(26) = {'Rrealss'};
M_.param_names_tex(26) = {'Rrealss'};
M_.param_names_long(26) = {'Rrealss'};
M_.param_names(27) = {'GAPss'};
M_.param_names_tex(27) = {'GAPss'};
M_.param_names_long(27) = {'GAPss'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 10;
M_.param_nbr = 27;
M_.orig_endo_nbr = 10;
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
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.orig_eq_nbr = 10;
M_.eq_nbr = 10;
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
 0 3 13;
 0 4 0;
 1 5 0;
 2 6 0;
 0 7 14;
 0 8 15;
 0 9 0;
 0 10 0;
 0 11 0;
 0 12 0;]';
M_.nstatic = 5;
M_.nfwrd   = 3;
M_.npred   = 2;
M_.nboth   = 0;
M_.nsfwrd   = 3;
M_.nspred   = 2;
M_.ndynamic   = 5;
M_.dynamic_tmp_nbr = [9; 3; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , '2' ;
  3 , 'name' , '3' ;
  4 , 'name' , '4' ;
  5 , 'name' , '5' ;
  6 , 'name' , '6' ;
  7 , 'name' , '7' ;
  8 , 'name' , 'V' ;
  9 , 'name' , 'A' ;
  10 , 'name' , '10' ;
};
M_.mapping.PI.eqidx = [3 4 5 7 10 ];
M_.mapping.R.eqidx = [4 7 10 ];
M_.mapping.V.eqidx = [7 8 ];
M_.mapping.A.eqidx = [2 6 9 ];
M_.mapping.Y.eqidx = [3 5 6 ];
M_.mapping.C.eqidx = [1 3 4 5 ];
M_.mapping.N.eqidx = [1 6 ];
M_.mapping.MC.eqidx = [2 3 ];
M_.mapping.W.eqidx = [1 2 ];
M_.mapping.Rreal.eqidx = [10 ];
M_.mapping.ev.eqidx = [8 ];
M_.mapping.ea.eqidx = [9 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [3 4 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(10, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(27, 1);
M_.endo_trends = struct('deflator', cell(10, 1), 'log_deflator', cell(10, 1), 'growth_factor', cell(10, 1), 'log_growth_factor', cell(10, 1));
M_.NNZDerivatives = [35; -1; -1; ];
M_.static_tmp_nbr = [5; 1; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(2) = 0.99;
betta = M_.params(2);
M_.params(3) = 2;
sigma = M_.params(3);
M_.params(4) = 5;
varphi = M_.params(4);
M_.params(5) = 4;
mu = M_.params(5);
M_.params(6) = 0.75;
xsi = M_.params(6);
M_.params(7) = 9;
theta = M_.params(7);
M_.params(8) = 0;
alpha = M_.params(8);
M_.params(9) = (1-M_.params(2)*M_.params(6))*(1-M_.params(6))/M_.params(6);
lambda = M_.params(9);
M_.params(10) = M_.params(9)*(M_.params(8)+(1-M_.params(8))*M_.params(3)+M_.params(4))/(1-M_.params(8)+M_.params(8)*M_.params(7));
kappa = M_.params(10);
M_.params(1) = M_.params(6)*(M_.params(7)-1)/((1-M_.params(2)*M_.params(6))*(1-M_.params(6)));
phi = M_.params(1);
M_.params(11) = 1.5;
phi_p = M_.params(11);
M_.params(12) = 0.125;
phi_x = M_.params(12);
M_.params(13) = 0.9;
rho_a = M_.params(13);
M_.params(14) = 0.5;
rho_v = M_.params(14);
M_.params(15) = 0.007;
sigma_a = M_.params(15);
M_.params(16) = 0.0025;
sigma_v = M_.params(16);
M_.params(17) = 1;
Ass = M_.params(17);
Vss  = 1;
M_.params(18) = 1;
PIss = M_.params(18);
M_.params(19) = ((M_.params(7)-1)/M_.params(7)*M_.params(17)^(1+M_.params(4)))^(1/(M_.params(3)+M_.params(4)));
Yss = M_.params(19);
M_.params(20) = M_.params(19);
Css = M_.params(20);
M_.params(21) = M_.params(19);
Nss = M_.params(21);
M_.params(22) = (M_.params(7)-1)/M_.params(7);
Wss = M_.params(22);
M_.params(23) = M_.params(22)/M_.params(17);
MCss = M_.params(23);
M_.params(24) = M_.params(18)/M_.params(2);
Rss = M_.params(24);
M_.params(25) = M_.params(19);
Yflexss = M_.params(25);
M_.params(26) = M_.params(24)/M_.params(18);
Rrealss = M_.params(26);
M_.params(27) = M_.params(19)/M_.params(25);
GAPss = M_.params(27);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(1) = log(M_.params(18));
oo_.steady_state(2) = log(M_.params(24));
oo_.steady_state(3) = log(Vss);
oo_.steady_state(4) = log(M_.params(17));
oo_.steady_state(5) = log(M_.params(19));
oo_.steady_state(6) = log(M_.params(20));
oo_.steady_state(7) = log(M_.params(21));
oo_.steady_state(8) = log(M_.params(23));
oo_.steady_state(9) = log(M_.params(22));
oo_.steady_state(10) = log(M_.params(26));
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
M_.Sigma_e(1, 1) = 1;
M_.Sigma_e(2, 2) = 1;
options_.irf = 20;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'NKmodel_nonlin_NEW_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKmodel_nonlin_NEW_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKmodel_nonlin_NEW_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKmodel_nonlin_NEW_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKmodel_nonlin_NEW_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKmodel_nonlin_NEW_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NKmodel_nonlin_NEW_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
