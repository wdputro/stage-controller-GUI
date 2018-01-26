function DisconnectG( handles )
%DISCONNECTG Summary of this function goes here
%   Detailed explanation goes here
picolas_plcs_stop(s);

C663_X.CloseConnection; 
C663_Y.CloseConnection; 

Controller.Destroy;
clear Controller;
clear C663_X;
clear C663_Y
clear s;
clear afg;

end

