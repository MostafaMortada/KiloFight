#!/bin/lua
math.randomseed(os.time())
U,E="U","\27["
a=U:rep(32).."\nU"
n,m,x,y,e,r,w,t,h=20,a,2,2,{},math.random,io.write,0,10
p=n
for i=2,15 do
for o=2,31 do
_=r(1,5)
m=m..("    U"):sub(_,_)
end
m=m.."U\nU"
end
m=m..a
for i=1,n do
e[i]={x=r(2,31),y=r(2,15),h=5}
end
while""do
w(E,"2J\27[HKiloFight - Mostafa Mortada\n",m,E,"17;33H ")
for i=1,n do
w(E,e[i].y+1,";",e[i].x,"H@",E,e[i].y+1,";35H",e[i].h)
end
w(E,y+1,";",x,"H&\27[18;1HEnemies:",p,"|HP:",h,"|>")
i=io.read()
c,v=x,y
x=x+(i=="d"and 1 or i=="a"and-1 or 0)
y=y+(i=="s"and 1 or i=="w"and-1 or 0)
_=y*33-33+x
if U==m:sub(_,_)then
x,y=c,v
end
for i=1,n do
s=e[i]
c,v=s.x,s.y
q=x>c and 1 or x<c and-1 or 0
u=y>v and 1 or y<v and-1 or 0
s.x,s.y=c+q,v+u
_=s.y*33-33+s.x
if U==m:sub(_,_)then
s.x,s.y=c,v
end
if s.x..s.y==x..y then
s.x,s.y=c,v
if q==-u then
s.h=s.h-1
if s.h<1 then
p=p-1
end
else
h=h-1
end
end
if s.h<1 then
s={x=1,y=1,h=0}
end
e[i]=s
end
t=t+1
if p*h<1 then
w(p<1 and"Won"or"Lost"," in ",t," turns\n")
break
end
end
