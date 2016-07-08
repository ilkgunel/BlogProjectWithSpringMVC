/**
 * 
 */
function sameness(id1, id2, wtext){
        var a = document.getElementById(id1).value;
        var b = document.getElementById(id2).value;

        if(a !== b){
            document.getElementById("warning_text").innerHTML = wtext+" uyuşmuyor!";
            document.getElementById(id1).style.borderColor="red";
            document.getElementById(id2).style.borderColor="red";
            
        }
        else{
            document.getElementById("warning_text").innerHTML ="";
            document.getElementById(id1).style.borderColor="white";
            document.getElementById(id2).style.borderColor="white";
            
        }
}