// create camera
_camera = "camera" camCreate [0, 0, 5];
_camera cameraEffect ["internal","back"];

sleep 0.1;
showCinemaBorder false;

// start at street
_camera camPrepareTarget [3448.22,112579.70,11.74];
_camera camPreparePos [3448.22,12579.69,2.00];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

//titleText["Start at street", "plain down", 0.5];

_time = diag_tickTime;
_frame = diag_frameno;

// bit waiting o the street view
sleep 5;

// rise up
_camera camPrepareTarget [-6221.99,111107.25,-14040.46];
_camera camPreparePos [3447.87,12577.26,32.89];
_camera camCommitPrepared 10;
//titleText["rise up", "plain down", 0.5];
waitUntil {camCommitted _camera};

// pan right
_camera camPrepareTarget [92099.44,56651.79,-14040.49];
_camera camPreparePos [3447.87,12577.26,32.89];
_camera camCommitPrepared 10;
//titleText["pan right", "plain down", 0.5];
waitUntil {camCommitted _camera};

// move forward
_camera camPrepareTarget [52977.23,98328.78,-13827.69];
_camera camPreparePos [3588.22,12841.20,70.74];
_camera camCommitPrepared 0;
//titleText["move forward", "plain down", 0.5];

sleep 2;

// 1 leg
_camera camPrepareTarget [27367.14,109140.80,-13888.16];
_camera camPreparePos [3676.46,13326.10,73.73];
_camera camCommitPrepared 10;
//titleText["1 leg", "plain down", 0.5];
waitUntil {camCommitted _camera};

// end leg
_camera camPrepareTarget [42836.39,104293.09,-13935.86];
_camera camPreparePos [3832.94,13696.66,66.98];
_camera camCommitPrepared 10;
//titleText["end leg", "plain down", 0.5];
waitUntil {camCommitted _camera};

sleep 3;

// start long movement through NW part
_camera camPrepareTarget [78587.78,81645.97,-13929.31];
_camera camPreparePos [4535.84,15933.98,39.08];
_camera camCommitPrepared 0;
//titleText["start long movement through NW part", "plain down", 0.5];

sleep 3;

// 1 leg
_camera camPrepareTarget [78587.78,81645.97,-13929.40];
_camera camPreparePos [5052.71,16392.51,146.18];
_camera camCommitPrepared 15;
//titleText["1 leg", "plain down", 0.5];
waitUntil {camCommitted _camera};

// 2 leg
_camera camPrepareTarget [104012.94,9068.29,-14058.52];
_camera camPreparePos [6201.12,16392.68,148.11];
_camera camCommitPrepared 15;
//titleText["2 leg", "plain down", 0.5];
waitUntil {camCommitted _camera};

// 3 leg
_camera camPrepareTarget [104012.94,9068.29,-14058.37];
_camera camPreparePos [7519.65,16293.49,84.04];
_camera camCommitPrepared 15;
//titleText["3 leg", "plain down", 0.5];
waitUntil {camCommitted _camera};

// 4 leg
_camera camPrepareTarget [104012.94,9068.29,-14058.48];
_camera camPreparePos [8880.32,16190.86,108.59];
_camera camCommitPrepared 15;
//titleText["4 leg", "plain down", 0.5];
waitUntil {camCommitted _camera};

// 5 leg
_camera camPrepareTarget [104012.94,9068.29,-14058.69];
_camera camPreparePos [10272.33,16085.84,137.07];
_camera camCommitPrepared 15;
//titleText["5 leg", "plain down", 0.5];
waitUntil {camCommitted _camera};

// last leg
_camera camPrepareTarget [104012.94,9068.29,-14058.41];
_camera camPreparePos [12245.96,15936.91,202.80];
_camera camCommitPrepared 15;
//titleText["last leg", "plain down", 0.5];
waitUntil {camCommitted _camera};

sleep 0.3;

// east side start movement
_camera camPrepareTarget [-60740.05,-40331.10,100];
_camera camPreparePos [21644.97,16349.65,100];
_camera camCommitPrepared 0;
//titleText["east side start movement", "plain down", 0.5];

sleep 3;

// last leg (long leg)
_camera camPrepareTarget [-94622.42,21759.40,175];
_camera camPreparePos [5239.63,16508.50,175];
_camera camCommitPrepared 45;
//titleText["last leg (long leg)", "plain down", 0.5];
waitUntil {camCommitted _camera};

sleep 0.3;

// SE start movement
_camera camPrepareTarget [20453.99, 105318.59, 12];
_camera camPreparePos [20453.99, 5318.59, 100];
_camera camCommitPrepared 0;
//titleText["SE start movement", "plain down", 0.5];

sleep 2;

// 1 leg
_camera camPrepareTarget [20375.03, 118769.68, 90];
_camera camPreparePos [20375.03, 18769.68, 30];
_camera camCommitPrepared 20;
//titleText["1 leg", "plain down", 0.5];
waitUntil {camCommitted _camera};

// 2 leg
_camera camPrepareTarget [94943.95, 89615.80, 100];
_camera camPreparePos [23645.81, 19497.60, 100];
_camera camCommitPrepared 15;
//titleText["2 leg", "plain down", 0.5];
waitUntil {camCommitted _camera};

// last leg
_camera camPrepareTarget [107279.81, 86661.50, 100];
_camera camPreparePos [28165.94, 25497.90, 100];
_camera camCommitPrepared 15;
//titleText["last leg", "plain down", 0.5];
waitUntil {camCommitted _camera};

sleep 0.3;

_timePassed = diag_tickTime - _time;
_framesPassed = diag_frameno - _frame;

5 fadeMusic 0;
5 fadeSound 0;
titleCut ["", "BLACK OUT", 4];
sleep 5;

titleText [format["ARMA2 BENCHMARK \nAVERAGE FPS: %1\n\n\n\n\n\n[ Press Space to continue. ]", round ( _framesPassed / _timePassed)], "BLACK FADED", 999999];
spaceCheck = (findDisplay 46) displayAddEventHandler ["KEYDOWN"," if (_this select 1 == 57) then {endMission ""End1""}"];
