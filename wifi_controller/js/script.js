var joystickCreated = "none";


function move(linear,angular)
{
    console.log("linear speed:",linear)
    console.log("angular: ", angular)
}

function joystickRecalibrate(){
    joystickControl("off");
    joystickControl("on");
}

//create joystick object
function joystickControl(toggle)
{
    var options = 
    {
        zone: document.getElementById('nipple'),
        mode: 'static',
        size: 100,
        position: {left:"50%", top:"50%"},
        color: 'white'
    }
    if(toggle=="on" && joystickCreated == "none")
    {
        manager = nipplejs.create(options);

        linear_speed = 0;
        angular_speed = 0;
        self.manager.on('start', function (event, nipple) 
        {
            //console.log("Movement start");
            timer = setInterval(function () {
            move(linear_speed, angular_speed);
            }, 25);
        });

        self.manager.on('move', function (event, nipple) 
        {
            console.log("Moving");
            max_linear = 1.0; // m/s
            max_angular = 1.0; // rad/s
            max_distance = 75.0; // pixels;
            linear_speed = Math.sin(nipple.angle.radian) * max_linear * nipple.distance/max_distance;
            angular_speed = -Math.cos(nipple.angle.radian) * max_angular * nipple.distance/max_distance;
        });

        self.manager.on('end', function () 
        {
            //console.log("Movement end");
            if (timer) 
            {
            clearInterval(timer);
            }
            self.move(0, 0);
        });
        joystickCreated = "created";
        //create toggle button
        buttonCalibrate = document.createElement("button");
        buttonCalibrate.setAttribute("onclick",joystickRecalibrate);
        buttonCalibrate.setAttribute("class","button-style");
        buttonCalibrate.setAttribute("id","calibrate-button");
        buttonCalibrate.innerHTML = "Re-Calibrate";
        document.getElementById("joystick-area").appendChild(buttonCalibrate);

    }
    else if(toggle=="off" && joystickCreated!="none")
    {
        self.manager.destroy();
        joystickCreated = "none";
    }
}
joystickControl("on")