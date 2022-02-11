// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "trix"
import "@rails/actiontext"
import * as bootstrap from "bootstrap"


/*
 * Event to load, set the outerline when the input is focus and remove it when blur it
*/
$(function() {
    $(".loginInput input").focus( function(){
        $(this).parent().css("box-shadow","0px 0px 10px 0px #3b13b0");
    });
    $(".loginInput input").blur( function(){
        $(this).parent().css("box-shadow","none");
    });
    $('#cbRemenberMe').click(
        function(){

            if( $('#cbRemenberMe').prop('checked') ) {
                //alert('Seleccionado');
            }
        }
    );
});

/*
 * =============================================
 * Check Login
 * 
 * Block the input to avoid errors
 * Check if the information is correct and if the user wants keep his 
 * sesion open for the next time when try to use the aplication
 * 
 * @author: autorname <email_contact>
 * @created: 2022-02-10
 * @param 
 * @return void 
 * =============================================
 */
function checkLogin(evt){
    evt.preventDefault(); //stop the default function in the submit, in this case, the reload page
    
    //declaration of varibles
    let username = $("#loginUserInput input");
    let password = $("#loginPassInput input");
    let remember = $("#cbRemenberMe");

    //block the inputs, can be skipped if use the loading, 
    //in this case i use the loading so i commented this line
    /* username.attr("disabled", "true");
    password.attr("disabled", "true");
    remember.attr("disabled", "true"); */
    //this only for debuggin
    alert(`usr: ${username.val()} --- pass: ${password.val()} --- remember: ${remember.prop('checked')}`);

    //in the start show the loading page and when finish the request, hide it
    loading("Checking", true);
    //this time out simulates the time in the request
    setTimeout(function(){
        loading("", false);
    },4000);
}

/*
 * =============================================
 * Loading
 * 
 * Show or hide the div of loading updating the center text
 * 
 * @author: autorname <email_contact>
 * @created: 2022-02-10
 * @param {string} centerText
 * @param {bool} show
 * @return void 
 * =============================================
 */
function loading(centerText, show){
    centerText = centerText != "" ? centerText : "Loading";

    if (show){
        $("#textLoading").html(centerText);
        $("#loading").fadeIn("slow");
    }
    else
        $("#loading").fadeOut("slow");
}

