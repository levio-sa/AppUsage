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
## @deftypefn {} {@var{retval} =} displayData (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ASUS <ASUS@LAPTOP-IPNK6VFL>
## Created: 2020-08-04

function retval = displayData (X,y1,y2,y3)
  
  figure;
  hold on;
  pos1=find(y1==1);
  pos2=find(y1==2);
  pos3=find(y1==3);
  pos4=find(y1==4);
  pos5=find(y1==5);
  pos6=find(y1==6);
  plot(X(pos1,4),X(pos1,1),'k+;COD;',"LineWidth",2);
  plot(X(pos2,4),X(pos2,1),'ko;Whatsapp;','MarkerFaceColor','k');
  plot(X(pos3,4),X(pos3,1),'r+;Gallery;',"LineWidth",2);
  plot(X(pos4,4),X(pos4,1),'ro;Artist Grid;','MarkerFaceColor','r');
  plot(X(pos5,4),X(pos5,1),'g+;Guitar Tuna;',"LineWidth",2);
  plot(X(pos6,4),X(pos6,1),'go;Gmail;','MarkerFaceColor','g');
  xlabel('Day Of week');
  ylabel('Screen Time');
  
  
  
  figure;
  hold on;
  pos1=find(y2==1);
  pos2=find(y2==2);
  pos3=find(y2==3);
  pos4=find(y2==4);
  pos5=find(y2==5);
  pos6=find(y2==6);
  plot(X(pos1,4),X(pos1,2),'k+;COD;',"LineWidth",3);
  plot(X(pos2,4),X(pos2,2),'ko;Whatsapp;','MarkerFaceColor','k');
  plot(X(pos3,4),X(pos3,2),'r+;Gallery;',"LineWidth",3);
  plot(X(pos4,4),X(pos4,2),'ro;Artist Grid;','MarkerFaceColor','r');
  plot(X(pos5,4),X(pos5,2),'g+;Guitar Tuna;',"LineWidth",3);
  plot(X(pos6,4),X(pos6,2),'go;Gmail;','MarkerFaceColor','g');
  xlabel('Day Of week');
  ylabel('No. of notifications');
  
  
  figure;
  hold on;
  pos1=find(y3==1);
  pos2=find(y3==2);
  pos3=find(y3==3);
  pos4=find(y3==4);
  pos5=find(y3==5);
  pos6=find(y3==6);
  plot(X(pos1,4),X(pos1,3),'k+;COD;',"LineWidth",2);
  plot(X(pos2,4),X(pos2,3),'ko;Whatsapp;','MarkerFaceColor','k');
  plot(X(pos3,4),X(pos3,3),'r+;Gallery;',"LineWidth",2);
  plot(X(pos4,4),X(pos4,3),'ro;Artist Grid;','MarkerFaceColor','r');
  plot(X(pos5,4),X(pos5,3),'g+;Guitar Tuna;',"LineWidth",2);
  plot(X(pos6,4),X(pos6,3),'go;Gmail;','MarkerFaceColor','g');
  xlabel('Day Of week');
  ylabel('No. of phone unlocks');

  
  

endfunction
