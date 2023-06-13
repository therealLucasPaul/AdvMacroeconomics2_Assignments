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
M_.fname = 'Assignment2_NKModel';
M_.dynare_version = '5.4';
oo_.dynare_version = '5.4';
options_.dynare_version = '5.4';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(3,1);
M_.exo_names_tex = cell(3,1);
M_.exo_names_long = cell(3,1);
M_.exo_names(1) = {'ev'};
M_.exo_names_tex(1) = {'ev'};
M_.exo_names_long(1) = {'ev'};
M_.exo_names(2) = {'ea'};
M_.exo_names_tex(2) = {'ea'};
M_.exo_names_long(2) = {'ea'};
M_.exo_names(3) = {'een'};
M_.exo_names_tex(3) = {'een'};
M_.exo_names_long(3) = {'een'};
M_.endo_names = cell(12,1);
M_.endo_names_tex = cell(12,1);
M_.endo_names_long = cell(12,1);
M_.endo_names(1) = {'A'};
M_.endo_names_tex(1) = {'A'};
M_.endo_names_long(1) = {'A'};
M_.endo_names(2) = {'V'};
M_.endo_names_tex(2) = {'V'};
M_.endo_names_long(2) = {'V'};
M_.endo_names(3) = {'PEreal'};
M_.endo_names_tex(3) = {'PEreal'};
M_.endo_names_long(3) = {'PEreal'};
M_.endo_names(4) = {'PI'};
M_.endo_names_tex(4) = {'PI'};
M_.endo_names_long(4) = {'PI'};
M_.endo_names(5) = {'R'};
M_.endo_names_tex(5) = {'R'};
M_.endo_names_long(5) = {'R'};
M_.endo_names(6) = {'Y'};
M_.endo_names_tex(6) = {'Y'};
M_.endo_names_long(6) = {'Y'};
M_.endo_names(7) = {'C'};
M_.endo_names_tex(7) = {'C'};
M_.endo_names_long(7) = {'C'};
M_.endo_names(8) = {'N'};
M_.endo_names_tex(8) = {'N'};
M_.endo_names_long(8) = {'N'};
M_.endo_names(9) = {'MCreal'};
M_.endo_names_tex(9) = {'MCreal'};
M_.endo_names_long(9) = {'MCreal'};
M_.endo_names(10) = {'Wreal'};
M_.endo_names_tex(10) = {'Wreal'};
M_.endo_names_long(10) = {'Wreal'};
M_.endo_names(11) = {'EN'};
M_.endo_names_tex(11) = {'EN'};
M_.endo_names_long(11) = {'EN'};
M_.endo_names(12) = {'Rreal'};
M_.endo_names_tex(12) = {'Rreal'};
M_.endo_names_long(12) = {'Rreal'};
M_.endo_partitions = struct();
M_.param_names = cell(29,1);
M_.param_names_tex = cell(29,1);
M_.param_names_long = cell(29,1);
M_.param_names(1) = {'alfa'};
M_.param_names_tex(1) = {'alfa'};
M_.param_names_long(1) = {'alfa'};
M_.param_names(2) = {'phi'};
M_.param_names_tex(2) = {'phi'};
M_.param_names_long(2) = {'phi'};
M_.param_names(3) = {'betta'};
M_.param_names_tex(3) = {'betta'};
M_.param_names_long(3) = {'betta'};
M_.param_names(4) = {'sigma'};
M_.param_names_tex(4) = {'sigma'};
M_.param_names_long(4) = {'sigma'};
M_.param_names(5) = {'varphi'};
M_.param_names_tex(5) = {'varphi'};
M_.param_names_long(5) = {'varphi'};
M_.param_names(6) = {'mu'};
M_.param_names_tex(6) = {'mu'};
M_.param_names_long(6) = {'mu'};
M_.param_names(7) = {'xsi'};
M_.param_names_tex(7) = {'xsi'};
M_.param_names_long(7) = {'xsi'};
M_.param_names(8) = {'theta'};
M_.param_names_tex(8) = {'theta'};
M_.param_names_long(8) = {'theta'};
M_.param_names(9) = {'alpha'};
M_.param_names_tex(9) = {'alpha'};
M_.param_names_long(9) = {'alpha'};
M_.param_names(10) = {'lambda'};
M_.param_names_tex(10) = {'lambda'};
M_.param_names_long(10) = {'lambda'};
M_.param_names(11) = {'kappa'};
M_.param_names_tex(11) = {'kappa'};
M_.param_names_long(11) = {'kappa'};
M_.param_names(12) = {'phi_p'};
M_.param_names_tex(12) = {'phi\_p'};
M_.param_names_long(12) = {'phi_p'};
M_.param_names(13) = {'phi_x'};
M_.param_names_tex(13) = {'phi\_x'};
M_.param_names_long(13) = {'phi_x'};
M_.param_names(14) = {'rho_a'};
M_.param_names_tex(14) = {'rho\_a'};
M_.param_names_long(14) = {'rho_a'};
M_.param_names(15) = {'rho_v'};
M_.param_names_tex(15) = {'rho\_v'};
M_.param_names_long(15) = {'rho_v'};
M_.param_names(16) = {'sigma_a'};
M_.param_names_tex(16) = {'sigma\_a'};
M_.param_names_long(16) = {'sigma_a'};
M_.param_names(17) = {'sigma_v'};
M_.param_names_tex(17) = {'sigma\_v'};
M_.param_names_long(17) = {'sigma_v'};
M_.param_names(18) = {'rho_en'};
M_.param_names_tex(18) = {'rho\_en'};
M_.param_names_long(18) = {'rho_en'};
M_.param_names(19) = {'Ass'};
M_.param_names_tex(19) = {'Ass'};
M_.param_names_long(19) = {'Ass'};
M_.param_names(20) = {'PIss'};
M_.param_names_tex(20) = {'PIss'};
M_.param_names_long(20) = {'PIss'};
M_.param_names(21) = {'Yss'};
M_.param_names_tex(21) = {'Yss'};
M_.param_names_long(21) = {'Yss'};
M_.param_names(22) = {'Css'};
M_.param_names_tex(22) = {'Css'};
M_.param_names_long(22) = {'Css'};
M_.param_names(23) = {'Nss'};
M_.param_names_tex(23) = {'Nss'};
M_.param_names_long(23) = {'Nss'};
M_.param_names(24) = {'Wss'};
M_.param_names_tex(24) = {'Wss'};
M_.param_names_long(24) = {'Wss'};
M_.param_names(25) = {'MCss'};
M_.param_names_tex(25) = {'MCss'};
M_.param_names_long(25) = {'MCss'};
M_.param_names(26) = {'Rss'};
M_.param_names_tex(26) = {'Rss'};
M_.param_names_long(26) = {'Rss'};
M_.param_names(27) = {'Yflexss'};
M_.param_names_tex(27) = {'Yflexss'};
M_.param_names_long(27) = {'Yflexss'};
M_.param_names(28) = {'Rrealss'};
M_.param_names_tex(28) = {'Rrealss'};
M_.param_names_long(28) = {'Rrealss'};
M_.param_names(29) = {'GAPss'};
M_.param_names_tex(29) = {'GAPss'};
M_.param_names_long(29) = {'GAPss'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 12;
M_.param_nbr = 29;
M_.orig_endo_nbr = 12;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
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
M_.orig_eq_nbr = 12;
M_.eq_nbr = 12;
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
 1 4 0;
 2 5 0;
 3 6 0;
 0 7 16;
 0 8 0;
 0 9 17;
 0 10 18;
 0 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;]';
M_.nstatic = 6;
M_.nfwrd   = 3;
M_.npred   = 3;
M_.nboth   = 0;
M_.nsfwrd   = 3;
M_.nspred   = 3;
M_.ndynamic   = 6;
M_.dynamic_tmp_nbr = [16; 3; 0; 0; ];
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
  8 , 'name' , '8' ;
  9 , 'name' , 'V' ;
  10 , 'name' , 'A' ;
  11 , 'name' , 'PEreal' ;
  12 , 'name' , '12' ;
};
M_.mapping.A.eqidx = [2 6 10 ];
M_.mapping.V.eqidx = [8 9 ];
M_.mapping.PEreal.eqidx = [2 5 7 11 ];
M_.mapping.PI.eqidx = [3 4 5 8 12 ];
M_.mapping.R.eqidx = [4 8 12 ];
M_.mapping.Y.eqidx = [3 5 6 ];
M_.mapping.C.eqidx = [1 3 4 5 ];
M_.mapping.N.eqidx = [1 6 7 ];
M_.mapping.MCreal.eqidx = [2 3 ];
M_.mapping.Wreal.eqidx = [1 2 7 ];
M_.mapping.EN.eqidx = [5 6 7 ];
M_.mapping.Rreal.eqidx = [12 ];
M_.mapping.ev.eqidx = [9 ];
M_.mapping.ea.eqidx = [10 ];
M_.mapping.een.eqidx = [11 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 3 ];
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(12, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(29, 1);
M_.endo_trends = struct('deflator', cell(12, 1), 'log_deflator', cell(12, 1), 'growth_factor', cell(12, 1), 'log_growth_factor', cell(12, 1));
M_.NNZDerivatives = [46; -1; -1; ];
M_.static_tmp_nbr = [12; 1; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(3) = 0.99;
betta = M_.params(3);
M_.params(4) = 2;
sigma = M_.params(4);
M_.params(5) = 5;
varphi = M_.params(5);
M_.params(6) = 4;
mu = M_.params(6);
M_.params(1) = 0.05;
alfa = M_.params(1);
M_.params(7) = 0.75;
xsi = M_.params(7);
M_.params(8) = 9;
theta = M_.params(8);
M_.params(9) = 0;
alpha = M_.params(9);
M_.params(10) = (1-M_.params(3)*M_.params(7))*(1-M_.params(7))/M_.params(7);
lambda = M_.params(10);
M_.params(11) = M_.params(10)*(M_.params(9)+(1-M_.params(9))*M_.params(4)+M_.params(5))/(1-M_.params(9)+M_.params(9)*M_.params(8));
kappa = M_.params(11);
M_.params(2) = M_.params(7)*(M_.params(8)-1)/((1-M_.params(3)*M_.params(7))*(1-M_.params(7)));
phi = M_.params(2);
M_.params(12) = 1.5;
phi_p = M_.params(12);
M_.params(13) = 0.125;
phi_x = M_.params(13);
M_.params(14) = 0.9;
rho_a = M_.params(14);
M_.params(15) = 0.5;
rho_v = M_.params(15);
M_.params(18) = 0.5;
rho_en = M_.params(18);
M_.params(16) = 0.007;
sigma_a = M_.params(16);
M_.params(17) = 0.0025;
sigma_v = M_.params(17);
sigma_en= 0.05;    
M_.params(19) = 1;
Ass = M_.params(19);
Vss  = 1;
M_.params(20) = 1;
PIss = M_.params(20);
M_.params(21) = ((M_.params(8)-1)/M_.params(8)*M_.params(19)^(1+M_.params(5)))^(1/(M_.params(4)+M_.params(5)));
Yss = M_.params(21);
M_.params(22) = M_.params(21);
Css = M_.params(22);
M_.params(23) = M_.params(21);
Nss = M_.params(23);
M_.params(24) = (M_.params(8)-1)/M_.params(8);
Wss = M_.params(24);
M_.params(25) = M_.params(24)/M_.params(19);
MCss = M_.params(25);
M_.params(26) = M_.params(20)/M_.params(3);
Rss = M_.params(26);
M_.params(27) = M_.params(21);
Yflexss = M_.params(27);
M_.params(28) = M_.params(26)/M_.params(20);
Rrealss = M_.params(28);
M_.params(29) = M_.params(21)/M_.params(27);
GAPss = M_.params(29);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(4) = log(M_.params(20));
oo_.steady_state(5) = log(M_.params(26));
oo_.steady_state(2) = log(Vss);
oo_.steady_state(1) = log(M_.params(19));
oo_.steady_state(6) = log(M_.params(21));
oo_.steady_state(7) = log(M_.params(22));
oo_.steady_state(8) = log(M_.params(23));
oo_.steady_state(9) = log(M_.params(25));
oo_.steady_state(10) = log(M_.params(24));
oo_.steady_state(12) = log(M_.params(28));
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
M_.Sigma_e(3, 3) = 1;
options_.irf = 20;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Assignment2_NKModel_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Assignment2_NKModel_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Assignment2_NKModel_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Assignment2_NKModel_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Assignment2_NKModel_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Assignment2_NKModel_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Assignment2_NKModel_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
