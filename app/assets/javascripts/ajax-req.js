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