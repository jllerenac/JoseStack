// global variable so it can be used here and in the js.erb files
var q_Id = "" ;

// this is only a client level validation to not allow empty values in questions table
function a_req()
{
    var b = $('#b').val();
    var t = $('#t').val();
    if (b.length === 0 || t.length === 0)
    {
        alert('No empty values');
        return false;  
    }
    if (t.length < 5)
    {
        alert('Title has to be at least 5 characters long');
        return false;  
    }
}
// this function will only assing the question id to the global variable
// so in create.js.erb that value will be assigned to the hidden field
// I dont use this value in render because question id is different for each row
function set_qid(qId)
{
 q_Id = qId ;
}

// this function is only to validate at client level to now allow empty values in answers tables
function save_answer()
{
    var a = $('#a').val();
    if (a.length === 0)
    {
        alert('No empty values');
        return false;  
    }
}

// this function is very important this is used for showing answers
// this function is called from two different js.erb files
// the first one is the index.js.erb which is used when clicking on show answers button
// so it will query answers by question id, the other file is create.js.erb
// when submitting a new answer the application will show all the answers regarding
// the question that was just answered 
function query_answers()
{
    $.ajax(
        {
            type : 'POST',
            data : 
            {
                qId: q_Id
            },
            url : ('/answers/queryByQId'),
            success :   function(result)
            {
            //    alert('OK');
            }
        });
}