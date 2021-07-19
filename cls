[1mdiff --git a/index.html b/index.html[m
[1mindex 129c06a..4559f46 100644[m
[1m--- a/index.html[m
[1m+++ b/index.html[m
[36m@@ -7,12 +7,15 @@[m
     <title>Document</title>[m
 </head>[m
 <style>[m
[32m+[m[32m    *{[m
[32m+[m[32m        font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;[m
[32m+[m[32m    }[m
[32m+[m
     body {[m
         background-color:#333;[m
         height: 100vh;[m
         width: 100%;[m
         display: flex;[m
[31m-        flex-direction: column;[m
         align-items: center;[m
         justify-content: center;[m
         overflow: hidden;[m
[36m@@ -20,28 +23,44 @@[m
 [m
     .btn {[m
         cursor: pointer;[m
[31m-        font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;[m
         font-weight: 500;[m
         font-size:1.5rem;[m
         padding: 10px 50px;[m
         border:none;[m
         border-radius: 5px;[m
         transition: .3s transform;[m
[32m+[m[32m        background-color: #fff;[m
     }[m
     [m
     .btn:hover{[m
[31m-        transform:scale(.9)[m
[32m+[m[32m        transform:scale(.9);[m
     }[m
     [m
     .btn:active {[m
[31m-        [m
         transform:scale(.7)[m
     }[m
[32m+[m
[32m+[m[32m    .group {[m
[32m+[m[32m        height:50vh;[m
[32m+[m[32m        display:flex;[m
[32m+[m[32m        flex-direction:column;[m
[32m+[m[32m        justify-content: space-evenly;[m
[32m+[m[32m        align-items: center;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    .hexa {[m
[32m+[m[32m        background-color:#fff;[m
[32m+[m[32m        width:100%;[m
[32m+[m[32m        text-align: center;[m
[32m+[m[32m        border-radius:5px;[m
[32m+[m
[32m+[m[32m    }[m
 </style>[m
 <body>[m
[31m-    [m
[31m-    <button class="btn" id="btn">Random Color</button>[m
[31m-[m
[32m+[m[32m    <div class="group">[m
[32m+[m[32m        <button class="btn" id="btn">Click Me! 😎</button>[m
[32m+[m[32m        <h2 class="hexa"># Hexacode</h2>[m
[32m+[m[32m    </div>[m
     <script src="script.js"></script>[m
 </body>[m
 </html>[m
\ No newline at end of file[m
[1mdiff --git a/script.js b/script.js[m
[1mindex bdad119..1820551 100644[m
[1m--- a/script.js[m
[1m+++ b/script.js[m
[36m@@ -1,20 +1,32 @@[m
[31m-const button = document.getElementById('btn')[m
[31m-const body = document.querySelector('body')[m
[32m+[m[32mconst button = document.getElementById("btn");[m
[32m+[m[32mconst body = document.querySelector("body");[m
[32m+[m[32mconst hexaCode = document.querySelector(".hexa");[m
 [m
 const colorChange = () => {[m
[32m+[m[32m  const colorObj = {[m
[32m+[m[32m    red: Math.floor(Math.random() * 255),[m
[32m+[m[32m    green: Math.floor(Math.random() * 255),[m
[32m+[m[32m    blue: Math.floor(Math.random() * 255),[m
[32m+[m[32m  };[m
 [m
[31m-    const colorObj = {[m
[31m-        red : Math.floor(Math.random()*255),[m
[31m-        green : Math.floor(Math.random()*255),[m
[31m-        blue : Math.floor(Math.random()*255)[m
[31m-    }[m
[32m+[m[32m  const rgbToHex = (r, g, b) =>[m
[32m+[m[32m    "#" +[m
[32m+[m[32m    [r, g, b][m
[32m+[m[32m      .map((x) => {[m
[32m+[m[32m        const hex = x.toString(16);[m
[32m+[m[32m        return hex.length === 1 ? "0" + hex : hex;[m
[32m+[m[32m      })[m
[32m+[m[32m      .join("");[m
 [m
[31m-    [m
[31m-    let randomColor = `rgba(${colorObj.red},${colorObj.green},${colorObj.blue})`;[m
[32m+[m[32m  hexaCode.textContent = `${rgbToHex([m
[32m+[m[32m    colorObj.red,[m
[32m+[m[32m    colorObj.green,[m
[32m+[m[32m    colorObj.blue[m
[32m+[m[32m  ).toUpperCase()}`;[m
 [m
[31m-    [m
[31m-    body.style.background = randomColor[m
[31m-}[m
[32m+[m[32m  let randomColor = `rgba(${colorObj.red},${colorObj.green},${colorObj.blue})`;[m
 [m
[31m-button.addEventListener('click', colorChange)[m
[32m+[m[32m  body.style.background = randomColor;[m
[32m+[m[32m};[m
 [m
[32m+[m[32mbutton.addEventListener("click", colorChange);[m
