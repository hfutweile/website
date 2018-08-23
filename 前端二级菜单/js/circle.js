//屏蔽浏览器右键功能
window.onload = function(){
    window.oncontextmenu=function(e)
    {
        e.preventDefault();
    }
}

//页面加载完成执行
$(function(){
    //默认一级、二级菜单隐藏
    $("#selectable")[0].style.display = 'none';
    $("#linkable")[0].style.display = 'none';
    $("#nav")[0].style.display = 'none';
    $("#image")[0].style.display = 'none';
    //鼠标右键单击切换一级菜单
    $("#homebutton").mousedown(function (event) {
        var btnNum = event.button;
        if (btnNum==2)
        {
            $("#nav").toggle()
            $("#image").toggle()
        }    
    });
    //鼠标悬浮在选择、连接上面浮现二级菜单
    $("#select").mouseover(function(){
        $("#selectable")[0].style.display = 'block';
    });
    $("#link").mouseover(function(){
        $("#linkable")[0].style.display = 'block';
    });
    //鼠标移开选择、连接上面二级菜单消失
    $("#select").mouseout(function(){
        
        $("#selectable")[0].style.display = 'none';
    });
    $("#link").mouseout(function(){
        
        $("#linkable")[0].style.display = 'none';
    });
});
