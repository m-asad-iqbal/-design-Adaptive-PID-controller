# -design-Adaptive-PID-controller

*************************************21 STEPS*************************************
************************************************************************************************

DON'T open files without reading isntructions. Kindly follow the steps very carefully, if you get 
any error go back to previous step to execute again.

STEP_1:
Install MATLAB R2019b or 2020a version with all neural networks and reinforcement learning tool

STEP_2:
Now unzip the folder name "invpend_asad.zip" with password "asad1234".

STEP_3:
Open the MATLAB software

STEP_4:
change the path directory of  matlab to current unzipped ("invpend_asad") folder location

STEP_5:
Find the file name "invertedpndlm_MrAsadmfile.m" and open it and RUN IT.

STEP_6:
open the file name "rlinvpend.slx" in simulink and DON'T RUN IT. 
REMEMBER DON'T delete the  "rlinvpend.slxc" file.

STEP_7:
open the folder name ".matfiles" and load all .mat files in matlab by simple
"load" command in command window

STEP_8:
>goto already trained files for your easiness by opening the folder name "a3c_agent" and 
find folder name "trained" and open it. now load "agent.mat" & "agent_dp.mat"  in workspace.
Wait untill they successfully loaded in workspace.


STEP_9:
goto already opened SIMULINK file and load the above workspace .mat files in simulink blocks 
through following ways

> FROM ".matfiles" folder: all files will be loaded in neuro-fuzzy deeep learning blocks.

>FROM "a3c_agent" folder:

////In which one file "agent.mat" will be loded in "RL agent" BLOCK.

                                             and

//////now goto "subClass" BLOCK and open it and load second file "agent_dp.mat" in RLagent BLOCK.



STEP_11:
goto simulink file and RUN IT.

> sim mechnics window will open and you will analyze the real time animated abehaviour of 
your invpendulum, and verify that how good is your trained agents. 
(you can modify your agents, i also make detiled code files for your help: see STEP_12 TO 21 for 
detailed explanation)

> see the behaviour of trained agents through the outputs of invpendulum on simulink scope
> you can see the controller effort delta_u through graph
> you can see cart position, cart speed, invpend angle & invpend swing speed through scope
> performance can be enhanced by getting more reward by agent training in 
  reinforcement learning manageR
> you can see my training reward on " fig" folder.
> i also provided code for reinforcement learning manager.


STEP_12:
if you want to get more reward, train to another agent, goto ""a3c_agent" folder and follow the steps
*******BUT MAKE SURE YOUR SIMULATION SCENARIO WAS COMPLETED TILL STEP_11 & YOU HAVE SAVED YOUR GRAPH********
*******ALSO CLEAR THE COMMAND WINDOW & CLEAR THE WORKSPACE***************

//////// create the envirornment//////
STEP_13:
first open the "MyEnvironment.m" file and follow the steps in file and modify according to your need BUT DON'T RUN IT.

//////// check the envirornment//////
STEP_14:
open the "checken.m" file & RUN IT. it gives no error. if it does then you made a mistake
or your environment was not well defined.

///////create the AGENT/////
STEP_15:
open the "creatACagent.m" file & RUN IT.

///////////train the AGENT/////
STEP_16:
open the "trainACagent.m" file & RUN IT. it will take time to train the agent through "RL LEARNING MANAGER".

///////////simulate the AGENT/////
STEP_17:
after training finished then open the "SimulateACagent.m" file & RUN IT. it will tell you the reward

STEP_18:
in all this procedrue , many files will be saved in workspce, now you have to find "agent" name file and save it.
and use it as i described in step8 to 9.

STEP_19:
after successfull execution of steps from 12 to 18 then goto "subcalss_agent" folder otherwise 
repeat the above steps. if ALL OK , then open "subcalss_agent" folder follow the steps

******BUT MAKE SURE YOUR, YOU CLEARD THE COMMAND WINDOW & CLEARD THE WORKSPACE AGAIN***************

STEP_20:
first load the env.mat file

STEP_21:
THEN FOLLOW THE SAME STEPS FROM 14 TO 18 ON THIS FILES AGAIN.





                                         ***********THANK YOU**************







