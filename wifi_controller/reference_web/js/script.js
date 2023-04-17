var joystickCreated = "none";
ip_address = null;
function joystickRecalibrate(){
    joystickControl("off");
    joystickControl("on");
}

function move(angle,speed)
{
    if(speed>0.45)
    {
        if(angle<=35 || angle>335)
        {
            console.log("right");
        }
        else if(angle>35 && angle<60)
        {
            console.log("upper right");
        }
        else if(angle>=60 && angle<=125)
        {
            console.log("up");
        }
        else if(angle>125 && angle<145)
        {
            console.log("upper left");
        }
        else if(angle>=145 && angle<=210)
        {
            console.log("left");;
        }
        else if(angle>210 && angle<235)
        {
            console.log("lower left");
        }
        else if(angle>235 && angle<305)
        {
            console.log("down");
        }
        else if(angle>305 && angle<335)
        {
            console.log("lower right");
        }
    }
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
        color: 'white',
        threshold: 1
    }
    if(toggle=="on" && joystickCreated == "none")
    {
        manager = nipplejs.create(options);

        speed = 0;
        angle = 0;
        self.manager.on('start', function (event, nipple) 
        {
            console.log("Movement start");
            timer = setInterval(function() {move(angle,speed)},800);
        });
        self.manager.on('move', function (event, nipple) 
        {
            console.log("Moving");
            speed = nipple.force;
            angle = nipple.angle.degree;
            // console.log(linear_speed);
        });


        self.manager.on('end', function () 
        {
            console.log("Movement end");
            if (timer) 
            {
            clearInterval(timer);
            }
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