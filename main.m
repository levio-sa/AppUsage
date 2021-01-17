%%Predicts which App was used most
%Inputs-Screen Time, No. of Notifications, No. of Unlocks, Day of week

%%Initialization
clear; close all; clc;

%%Parameters
input_layer_size=4;
hidden_layer_size=100;
num_labels=6;


%%Loading Data

fprintf('Loading and Visualizing Data ...\n')

load('trainingdata.mat');
m = size(X, 1);

displayData(X,y1,y2,y3);

fprintf('Program paused. Press enter to continue.\n');
pause;

%%Initialising Parameters

fprintf('\nInitializing Neural Network Parameters ...\n')

initial_Theta1 = randInitializeWeights(input_layer_size, hidden_layer_size);
initial_Theta2 = randInitializeWeights(hidden_layer_size, num_labels);

% Unroll parameters
initial_nn_params = [initial_Theta1(:) ; initial_Theta2(:)];


fprintf('\nTraining Neural Network1... \n')
[Theta11, Theta12]= nn1(X,y1,input_layer_size,hidden_layer_size,num_labels,initial_nn_params,200,1);


fprintf('\nTraining Neural Network2... \n')
[Theta21, Theta22]=nn1 (X,y2,input_layer_size,hidden_layer_size,num_labels,initial_nn_params,200,1);


fprintf('\nTraining Neural Network3... \n')
[Theta31, Theta32]=nn1 (X,y3,input_layer_size,hidden_layer_size,num_labels,initial_nn_params,200,1);

X1=[1 36 9 2; 2 0 1 1; 1 0 2 2]
predict(Theta11,Theta12,X1)
predict(Theta21,Theta22,X1)
predict(Theta31,Theta32,X1)



