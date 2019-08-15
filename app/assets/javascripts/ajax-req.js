var q_Id = "" ;
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

// this function is only to validate at client level
function save_answer()
{
    var a = $('#a').val();
    if (a.length === 0)
    {
        alert('No empty values');
        return false;  
    }
}
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