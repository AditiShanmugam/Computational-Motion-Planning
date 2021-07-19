function flag = triangle_intersection(P1, P2)
% triangle_test : returns true if the triangles overlap and false otherwise
flag=Pointin(P1,P2);
if flag==false
    flag=Pointin(P2,P1);
end
    function Point = Pointin(Po1,Po2)
        base=[Po1 ones(3,1)];
        Area_base=0.5*det(base);
        Point = false;
    for i=1:3
            Area=abs(Cal_Area(Po2(i,:),Po1(1:2,:)));
            Area=Area+abs(Cal_Area(Po2(i,:),Po1(2:3,:)));
            Area=Area+abs(Cal_Area(Po2(i,:),[Po1(1,:);Po1(3,:)]));
            if Area==Area_base
                Point = true;%true
                break;
            end
        end
    end
    function Area = Cal_Area(temp,Tra)
        Area=0.5*det([[temp;Tra] ones(3,1)]);
    end
flag = false;
end
