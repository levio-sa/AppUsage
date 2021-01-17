## Copyright (C) 2020 ASUS
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} CostFunction (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ASUS <ASUS@LAPTOP-IPNK6VFL>
## Created: 2020-08-04

function [J grad] = CostFunction (nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
  
  Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

  Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));


X=[ones(m,1) X];
a2=[ones(m,1) sigmoid(X*Theta1')];
a3=sigmoid(a2*Theta2');
y_final=zeros(m,num_labels);
for i=1:m
  y_final(i,y(i))=1;
endfor
J=(-1/m)*sum(sum(y_final.*log(a3)+(1-y_final).*log(1-a3)))+(lambda/(2*m))*(sum(sum(Theta1(:,2:end).^2))+sum(sum(Theta2(:,2:end).^2)));

d2=zeros(m,hidden_layer_size);
d3=zeros(m,num_labels);

d3=a3-y_final;
d2=((d3*Theta2).*(a2.*(1-a2)))(:,2:end);

D1=zeros(size(Theta1));
D2=zeros(size(Theta2));

for j=1:m
  D2=D2+d3(j,:)'*a2(j,:);
  D1=D1+d2(j,:)'*X(j,:);
endfor

Theta1_grad=(1/m)*D1+(lambda/m)*([zeros(hidden_layer_size,1) Theta1(:,2:end)]);
Theta2_grad=(1/m)*D2+(lambda/m)*([zeros(num_labels,1) Theta2(:,2:end)]);
grad = [Theta1_grad(:) ; Theta2_grad(:)];

endfunction
