function stageConnectG( handles )
%STAGECONNECTG Part of GUI Functions to connect the stage and Function
%Generator
%   by Widodo D. Putro
%      widodo.putro@rub.de

if(~exist('Controller','var'))
    Controller = PI_GCS_Controller();
end;

if(~isa(Controller,'PI_GCS_Controller'))
    Controller = PI_GCS_Controller();
end

controllerSN_Y = '0115500076';       
controllerSN_X = '0085500187';

stageType_Y = 'M-403.42S'; % See the label on the stage, e.g. "M-123.456"
stageType_X = 'M-405.2S';

boolpicontrollerconnected_Y = false;
boolpicontrollerconnected_X = false;

    if (exist('C663_Y','var'))
        if (C663_Y.IsConnected)
            boolpicontrollerconnected_Y = true;
        end
    end

    if (exist('C663_X','var'))
        if (C663_X.IsConnected)
            boolpicontrollerconnected_X = true;
        end
    end

%     global C663_Y;
%     global C663_X;
    
    if (~boolpicontrollerconnected_Y)
        C663_Y = Controller.ConnectUSB(controllerSN_Y)
    end

    if (~boolpicontrollerconnected_X)
        C663_X = Controller.ConnectUSB(controllerSN_X);
    end
   

% query controller identification
xIDN = C663_X.qIDN();
yIDN = C663_Y.qIDN();

fprintf('the X-stage is %s and the Y-stage is %d', xIDN, yIDN);

% initialize controller
C663_Y = C663_Y.InitializeController();
C663_X = C663_X.InitializeController();

% query controller axes
    availableaxes_Y = C663_Y.qSAI_ALLasArray;
    if(isempty(availableaxes_Y))
        error('No axes available');
    end
    
%     global axisname_Y;
    axisname_Y = availableaxes_Y{1};

    availableaxes_X = C663_X.qSAI_ALLasArray;
    if(isempty(availableaxes_X))
        error('No axes available');
    end
    
%     global axisname_X;
    axisname_X = availableaxes_X{1};

    % Change stage                                            
    C663_Y.CST(axisname_Y,stageType_Y);                             
    C663_Y.qCST(axisname_Y)     

    C663_X.CST(axisname_X,stageType_X);                             
    C663_X.qCST(axisname_X)  

    % switch on servo and search reference switch to reference stage
    C663_Y.SVO(axisname_Y,1);
    C663_X.SVO(axisname_Y,1);

    C663_Y.FNL(axisname_Y)
    C663_X.FRF(axisname_X)
    bReferencing = 1;                                         

    % wait for Referencing to finish                          
    while(0 ~= C663_Y.qFRF(axisname_Y)==0)                        
        pause(0.1);                                           
    end
    
   C663_X.VEL( axisname_X, 2);
   C663_Y.VEL( axisname_Y, 2);
   

    
%     while(Controller.IsMoving(axisname))
% 	pause(0.1);
%      fprintf('Controller is referencing');
%     end
%     global afg;
    afg=visa('agilent','USB0::0x0699::0x0343::C021331::INSTR');
    fopen(afg);
    
    assignin('base', 'Controller', Controller);
    assignin('base', 'C663_Y', C663_Y);
    assignin('base', 'C663_X', C663_X);
    assignin('base', 'axisname_Y', axisname_Y);
    assignin('base', 'axisname_X', axisname_X);    
    assignin('base', 'afg', afg);
    
%        actPOS( handles );

end

